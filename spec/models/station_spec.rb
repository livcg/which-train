require 'spec_helper'

describe "Station" do
	describe "#get_next_trip_options" do
		it "returns error if no leave_house_at time provided" do
			pending
#			expect(station.get_next_trip_options).to 
		end

		it "returns an empty list if no stations exist" do
    	expect(Station.get_next_trip_options(Time.now)).to eq []
    end

		it "returns an empty list if stations don't have train_trips" do
			station = Station.new
			expect(station.get_next_trip_options(Time.now)).to eq []
		end

		it "returns early train trips if the time is late enough"

		it "returns N trip options for each station"

		it "returns trip options sorted by the time to leave the house by"

		it "returns trip options that leave the house on/after now"

	end

	
end
