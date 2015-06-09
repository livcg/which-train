class WhichtrainController < ApplicationController
  MAX_NUM_OPTIONS_FOR_STATION = 2
  
  # GET /
  def index
    Time.zone = "Sydney"
    @now = Time.zone.now
    timeToUse = @now
    if @now > @now.change(hour: 10, mins: 32)
      timeToUse = @now.change(hour: 7)
      @isPastLastTrain = true
    end
    @tripoptions = getNextTripOptions(timeToUse)
  end
  
  private
  def getNextTripOptions(time)
    tripOptions = []
    Station.all.each do |station|
      arriveAtStation = time + (station.minsFromHome * 60)
      optionsForThisStation = 0
      station.traintrips.sort { |x,y| x.trainleavesat <=> y.trainleavesat }
        .each do |traintrip|
        if arriveAtStation.strftime("%H%M") < traintrip.trainleavesat.strftime("%H%M")
          tripOption = TripOption.new
          tripOption.leaveHouseBy = traintrip.trainleavesat - (station.minsFromHome * 60)
          tripOption.station = station
          tripOption.trainLeavesAt  = traintrip.trainleavesat
          tripOptions.push(tripOption)
          if (optionsForThisStation += 1) == MAX_NUM_OPTIONS_FOR_STATION
            break;
          end
        end
      end
    end
    return tripOptions.sort { |x,y| x.leaveHouseBy <=> y.leaveHouseBy }
  end
end
