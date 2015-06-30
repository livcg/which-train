class WhichtrainController < ApplicationController
  # GET /
  def index
    Time.zone = "Sydney"
    @now = Time.zone.now
    time_to_use = @now
    if @now > @now.change(hour: 23, min: 59)
      time_to_use = @now.change(hour: 7)
      @is_past_last_train = true
    end
    @trip_options = Station.get_next_trip_options(time_to_use)
  end
end
