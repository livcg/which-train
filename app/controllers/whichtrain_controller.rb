class WhichtrainController < ApplicationController
  MAX_NUM_OPTIONS_FOR_STATION = 2
  
  # GET /
  def index
    @now = Time.new
    @tripoptions = getNextTripOptions(@now)
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
