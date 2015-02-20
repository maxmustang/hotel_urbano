require 'rails_helper'
require 'spec_helper'

describe Hotel do

	include SunspotMatchers

	let(:hotel) { hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico") }

	describe "#get_location" do
		it "Return the formated location" do
			expect(hotel.get_location).to eq "Cancun, Quintana Roo, Mexico" 
		end
	end

	describe "#to_s" do
		it "Return the hotel name and the location" do
			expect(hotel.to_s).to eq "Grand Oasis Palm - #{hotel.get_location}"
		end
	end

	describe "#find_by_city_or_name" do
		context "with a city name as search query" do
			it "find all that matches" do 
				mock_hotel hotel.city
				expect(Sunspot.session).to have_search_params(:fulltext, hotel.city)
			end
		end

		context "with a hotel name as search parameter" do
			it "find all solr_response that matches " do
				mock_hotel hotel.name
				expect(Sunspot.session).to have_search_params(:fulltext, hotel.name)
			end
		end

		context "with a hotel or city that isnt indexed" do
			it "should not find anyone" do
				mock_hotel hotel.name
				expect(Sunspot.session).to_not have_search_params(:fulltext, "Copacabana")
			end
		end
	end

	describe "#add_periods" do
	
		it "will add a period" do
			hotel.add_periods Period.new(check_in: Date.today + 5, check_out: Date.today + 15)
			expect(hotel.periods.size).to eq 1
		end

		context "hotel already has a period but wanna add another period " do
			before do
				p = Period.new(check_in: Date.today, check_out: Date.today + 10)
				hotel.periods << p
			end

			it "can't add a period when it overrides another check_in " do
				hotel.add_periods Period.new(check_in: Date.today + 5, check_out: Date.today + 15)
				expect(hotel.periods.size).to eq 1
			end

			it "can't add a period when it overrides another check_out" do
				hotel.add_periods Period.new(check_in: Date.today - 5, check_out: Date.today + 5)
				expect(hotel.periods.size).to eq 1
			end

			it "will add a period when does not override any check_in or check_out from the hotel periods" do
				hotel.add_periods Period.new(check_in: Date.today + 12, check_out: Date.today + 15)
				expect(hotel.periods.size).to eq 2
			end
		end
	end

	private
	def mock_hotel search
		Sunspot.search(Hotel) do
		  fulltext search
		end
	end
end







