class WhichtrainController < ApplicationController
  # GET /
  def index
    Time.zone = "Sydney"
    @now = Time.zone.now
    timeToUse = @now
    if @now > @now.change(hour: 10, min: 32)
      timeToUse = @now.change(hour: 7)
      @isPastLastTrain = true
    end
    @tripoptions = Station.get_next_trip_options(timeToUse)
  end
end
