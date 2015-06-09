class WhichtrainController < ApplicationController

  # GET /
  def index
    @now = Time.new
    @tripoption = getNextTripOption(@now)
  end

  private
  def getNextTripOption(time)
    tripoption = TripOption.new
    Station.all.each do |station|
      arriveAtStation = time + (station.minsFromHome * 60)
      station.traintrips.sort { |x,y| x.trainleavesat <=> y.trainleavesat }
        .each do |traintrip|
        if arriveAtStation.strftime("%H%M") < traintrip.trainleavesat.strftime("%H%M")
          tripoption.leaveHouseBy = traintrip.trainleavesat - (station.minsFromHome * 60)
          tripoption.station = station
          tripoption.trainLeavesAt  = traintrip.trainleavesat
        end
      end
    end
    return tripoption
  end
end
