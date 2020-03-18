class User < ApplicationRecord
  has_many :user_pois, dependent: :destroy
  has_many :point_of_interests, through: :user_pois

  has_one :user_voivodeship, dependent: :destroy
  has_one :voivodeship, through: :user_voivodeship

  def self.john_tourist
    User.find_by(name: 'John Tourist')
  end

  # def self.voivodeships
  #   User.all.map(&:voivodeshilp).uniq
  # end
end
