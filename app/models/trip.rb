class Trip < ApplicationRecord
  validates_presence_of :name, :start_date, :end_date
  has_many :triptrails
  has_many :trails, through: :triptrails

  def total_distance
    trails.sum(:length)
  end

  def average_distance
    trails.average(:length)
  end

  def longest_distance
    trails.order(:length).last
  end

  def shortest_distance
    trails.order(:length).first
  end

end
