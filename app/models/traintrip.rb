class Traintrip < ActiveRecord::Base
  belongs_to :station

  def leaves_after(time)
    return time.strftime("%H%M") <= trainleavesat.strftime("%H%M")
  end
end
