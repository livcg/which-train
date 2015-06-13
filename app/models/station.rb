class Station < ActiveRecord::Base
  validates :name, :presence => true
  validates :minsFromHome, :presence => true

  has_many :traintrips
end
