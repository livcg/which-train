class Station < ActiveRecord::Base
  has_many :traintrips
end
