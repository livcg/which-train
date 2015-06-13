require 'test_helper'

class StationTest < ActiveSupport::TestCase
  test "should not save station without name" do
    station = Station.new
    assert !station.save, "Saved the station without a name"
  end

  test "should not save station without minsFromHome" do
    station = Station.new(name: "foo")
    assert !station.save, "Saved the station without a minsFromHome"
  end  

  # test "should not save station with minsFromHome < 0" do
  #   station = Station.new({ name: "foo", minsFromHome: -1 })
  #   assert !station.save, "Saved the station with minsFromHome < 0"
  # end  
end
