class WhichtrainController < ApplicationController

  # GET /
  def index
    @tripoption = TripOption.new
    @tripoption.leaveHouseBy = "12:00 PM"
    @tripoption.station = Station.last
    @tripoption.trainLeavesAt = "12:15 PM"
  end

end
