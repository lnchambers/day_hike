class Trip < ApplicationRecord
has_many :triptrails
has_many :trails, through: :triptrails

def total_distance
  trails.sum(:length)
end

def average_distance
  trails.average(:length)
end

end
