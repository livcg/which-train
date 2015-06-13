require 'test_helper'

class StationTest < ActiveSupport::TestCase
  test "should not save station without name" do
    station = Station.new
    assert !station.save, "Saved the station without a name"
  end

  test "should not save station without mins_from_home" do
    station = Station.new(name: "foo")
    assert !station.save, "Saved the station without a mins_from_home"
  end  

  # test "should not save station with mins_from_home < 0" do
  #   station = Station.new({ name: "foo", mins_from_home: -1 })
  #   assert !station.save, "Saved the station with mins_from_home < 0"
  # end  
end
