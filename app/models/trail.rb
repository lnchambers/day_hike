class Trail < ApplicationRecord
  validates_presence_of :name, :length, :address
  has_many :triptrails
  has_many :trips, through: :triptrails

  def total_trips
    trips.count
  end
end
