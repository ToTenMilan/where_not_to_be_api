class PointOfInterest < ApplicationRecord
  has_many :user_pois, dependent: :destroy
  has_many :users, through: :user_pois
end
