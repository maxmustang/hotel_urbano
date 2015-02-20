require 'rails_helper'

describe Period do
	let(:periods){ periods = [] }
	let(:period){ period = Period.new check_in: Date.today, check_out: Date.today + 10  }

	describe "#to_s" do
		it "shows the check_in and check_out" do
			expect(period.to_s).to eq "Period in check_in: #{period.check_in}, check_out: #{period.check_out}"
		end
	end

	describe "#available_on" do
		before do
			periods << Period.new(check_in: Date.today + 5, check_out: Date.today + 15)
		end

		it "check_in its between the check_in and check_out of the hotel periods" do
			expect(period.available_on periods).to eq false
		end

		it "check_out its between the check_in and check_out of the hotel periods" do
			expect(period.available_on periods).to eq false
		end

		it "check_out and check_in its not on the hotel periods" do
			expect(period.available_on [Period.new(check_in: Date.today - 5, check_out: Date.today )]).to eq true
		end 
	end
end
