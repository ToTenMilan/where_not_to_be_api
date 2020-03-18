class User < ApplicationRecord
  has_many :user_pois, dependent: :destroy
  has_many :point_of_interests, through: :user_pois

  def self.voivodeships
    User.all.map(&:voivodeshilp).uniq
  end
end
