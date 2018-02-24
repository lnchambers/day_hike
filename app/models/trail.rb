class Trail < ApplicationRecord
has_many :triptrails
has_many :trips, through: :triptrails

  def total_trips
    trips.count
  end
end
