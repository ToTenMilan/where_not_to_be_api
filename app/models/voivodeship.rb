class Voivodeship < ApplicationRecord
  has_many :user_voivodeships, dependent: :destroy
  has_many :users, through: :user_voivodeships
end
