require 'rails_helper'
require 'spec_helper'

describe Hotel do

	before :all do
		@hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")
		@hotel.save()
	end

	after :all do 
		Hotel.remove_all_from_index!
	end

	describe "#get_location" do
		it "Return the formated location" do
			# hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")
			expect(@hotel.get_location).to eq "Cancun, Quintana Roo, Mexico" 
		end
	end

	describe "#to_s" do
		it "Return the hotel name and the location" do
			# hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")
			expect(@hotel.to_s).to eq "Grand Oasis Palm - #{@hotel.get_location}"
		end
	end

	describe "#find_by_city_or_name" do
		context "find all cities that matches with cancun"
			
		end

		context "find all hotels that matches with oasis"

		end
	end
end
