class Users::NearbyUsersController < ApplicationController
  def index
    ### Alway look for John Tourist, demo user
    user = User.john_tourist
    user_loc = [user.lat, user.lng]

    users = User.all.map do |nearby_user|
      nearby_user_loc = [nearby_user.lat, nearby_user.lng]
      if DistanceCalc.new(user_loc, nearby_user_loc).call < max_distance
        {
          lat: nearby_user.lat,
          lng: nearby_user.lng
        }
      end
    end.compact

    render json: users, status: 200
  end
end
