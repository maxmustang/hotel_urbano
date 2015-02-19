require 'rails_helper'
require 'spec_helper'

describe Hotel do

	include SunspotMatchers

	let(:hotel) { hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")}

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
				mock_hotel 'Cancun'
				expect(Sunspot.session).to have_search_params(:fulltext, 'Cancun')
			end
		end

		context "with a hotel name as search parameter" do
			it "find all solr_response that matches " do
				mock_hotel 'Oasis'
				expect(Sunspot.session).to have_search_params(:fulltext, 'Oasis')
			end
		end

		context "with a hotel or city that isnt indexed" do

			it "should not find anyone" do
				mock_hotel 'Oasis'
				expect(Sunspot.session).to_not have_search_params(:fulltext, "Copacabana")
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







