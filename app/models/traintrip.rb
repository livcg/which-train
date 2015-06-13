class Traintrip < ActiveRecord::Base
  belongs_to :station

  def leaves_after(time)
    return time.strftime("%H%M") <= train_leaves_at.strftime("%H%M")
  end
end
