require 'rails_helper'
require 'spec_helper'

describe Hotel do

	before :each do #run-before each test
		@hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")
	end 

	describe "#get_location" do
		it "Return the formated location" do
			expect(@hotel.get_location).to eq "Cancun, Quintana Roo, Mexico" 
		end
	end

	describe "#to_s" do
		it "Return the hotel name and the location" do
			expect(@hotel.to_s).to eq "Grand Oasis Palm - #{@hotel.get_location}"
		end
	end
end
