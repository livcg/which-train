class Station < ActiveRecord::Base
  validates :name, :presence => true
  validates :mins_from_home, :presence => true

  has_many :traintrips

  MAX_NUM_OPTIONS_PER_STATION = 3

  def Station.get_next_trip_options(leave_house_at)
    trip_options = []
    Station.all.each do |station|
      trip_options.concat(station.get_next_trip_options(leave_house_at))
    end
    return trip_options.sort { |x,y| x.leaveHouseBy <=> y.leaveHouseBy }
  end

  def get_next_trip_options(leave_house_at)
    trip_options = []
    arrive_at_station = leave_house_at + (mins_from_home * 60)
    options_for_this_station = 0    
    traintrips.sort { |x,y| x.trainleavesat <=> y.trainleavesat }
      .each do |train_trip|
      if train_trip.leaves_after(arrive_at_station)
        trip_option = TripOption.new(leaveHouseBy: train_trip.trainleavesat - (mins_from_home * 60), station: self, trainLeavesAt: train_trip.trainleavesat)
        trip_options.push(trip_option)
        if (options_for_this_station += 1) == MAX_NUM_OPTIONS_PER_STATION
          break;
        end
      end
    end
    return trip_options
  end
  
end
