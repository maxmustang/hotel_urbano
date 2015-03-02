require 'rails_helper'
require 'spec_helper'

describe Hotel do

	let(:hotel) { hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico") }
	let(:hotel2) { hotel2 = Hotel.new(name:"Grand Oasis Palm2", state:"Quintana Roo", city: "Cancun", country: "Mexico") }

	before do
		hotel.save()
		hotel2.save()
	end

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
				hotels = Hotel.find_by_city_or_name('Cancun')
				expect(hotels.count).to eq 2
			end
		end

		context "with a hotel name as search parameter" do
			it "find all hotels that matches" do
				hotels = Hotel.find_by_city_or_name('Grand Oasis Palm')
				expect(hotels.count).to eq 2
			end
		end

		context "with a search term with camelCase" do

			it "should returns all hotels that matches with the hotel name" do
				hotels = Hotel.find_by_city_or_name('grand oasis palm')
				expect(hotels.count).to eq 2
			end

			it "should returns all hotels that matches with the city name" do
				hotels = Hotel.find_by_city_or_name('cancun')
				expect(hotels.count).to eq 2
			end
		end

		context "with a hotel or city that isnt indexed" do
			it "should not find anyone" do
				hotels = Hotel.find_by_city_or_name('Copacabana Palace')
				expect(hotels.count).to eq 0
			end
		end
	end

	describe "#add_periods" do
	
		it "will add a period" do
			hotel.add_periods Period.new(check_in: Date.parse('10-02-2015'), check_out: Date.parse('25-02-2015'))
			expect(hotel.periods.count).to eq 1
		end

		context "hotel already has a period but wanna add another period " do
			before do
				p = Period.new(check_in: Date.parse('4-02-2015'), check_out: Date.parse('20-02-2015'))
				hotel.periods << p
			end

			it "when it overrides another check_in " do
				p = Period.new(check_in: Date.parse('3-02-2015'), check_out: Date.parse('14-02-2015'))
				expect{ hotel.add_periods p }.to raise_error
				expect(hotel.periods.size).to eq 1
			end

			it "it overrides another check_out" do
				p = Period.new(check_in: Date.parse('9-02-2015'), check_out: Date.parse('18-02-2015'))
				expect{hotel.add_periods p }.to raise_error
				expect(hotel.periods.size).to eq 1
			end

			it "should not have void on periods" do
				p = Period.new(check_in: Date.parse('27-02-2015'), check_out: Date.parse('10-03-2015'))
				expect{hotel.add_periods p }.to raise_error
				expect(hotel.periods.size).to eq 1
			end

			it "when does not override any check_in or check_out from the hotel periods" do
				hotel.add_periods Period.new(check_in: Date.parse('21-02-2015'), check_out: Date.parse('27-02-2015'))
				expect(hotel.periods.size).to eq 2
			end
		end
	end

	describe "#find_on_period" do
		context "when a search period is in a hotel saved period" do
			before do 
				p1 = Period.new(check_in: Date.today, check_out: Date.today + 10)
				hotel.add_periods p1
				hotel.save!
			end
			it "find all hotels that matches" do 
				hotels = Hotel.find_on_period "cancun", Date.today, Date.today + 2
				expect(hotels.count).to eq 1
			end
		end

		context "when a search period does not match with any saved periods" do
			# dado: 10 a 15
			# buscado: 16 a 20
			# nao deve retornar nada
			before do 
				p1 = Period.new(check_in: Date.parse('10-02-2015'), check_out: Date.parse('15-02-2015'))
				hotel.add_periods p1
			end

			it "should find none" do
				hotels = Hotel.find_on_period "cancun", Date.parse('16-02-2015'), Date.parse('20-02-2015')
				expect(hotels.count).to eq 0
			end
		end

		context "when a search period is in between 2 periods in a row" do
			# dado: [10-15, 16-20]
			# buscado: 12 a 18
			# deve retornar
			before do 
				p1 = Period.new(check_in: Date.parse('10-02-2015'), check_out: Date.parse('15-02-2015'))
				p2 = Period.new(check_in: Date.parse('16-02-2015'), check_out: Date.parse('18-02-2015'))
				hotel.add_periods p1
				hotel.add_periods p2
			end

			it "should find " do 
				hotels = Hotel.find_on_period "cancun", Date.parse('12-02-2015'), Date.parse('18-02-2015')
				expect(hotels.count).to eq 1
			end
		end
		
		#faz sentido esse teste?
		xcontext "when a search period is between 2 periods in a row, should not returns" do
			# dado: [10-15, 18-20]
			# buscado: 12 a 18
			# deve nao retornar pois existe buraco
			before do 
				p1 = Period.new(check_in: Date.parse('10-02-2015'), check_out: Date.parse('15-02-2015'))
				p2 = Period.new(check_in: Date.parse('18-02-2015'), check_out: Date.parse('20-02-2015'))
				hotel.add_periods p1
				hotel.add_periods p2
			end
			it "should find none " do 
				hotels = Hotel.find_on_period "cancun", Date.parse('12-02-2015'), Date.parse('18-02-2015')
				expect(hotels.count).to eq 0
			end
		end
	end
end