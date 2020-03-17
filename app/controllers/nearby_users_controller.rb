class NearbyUsersController < ApplicationController
  def index
    # current_location = { lat: params[:current_lat], lng: current[:lng]
    # lat = params[:current_lat]
    # lng = current[:current_lng]
    max_distance = 170
    user = User.find(params[:user_id])
    user_loc = [user.lat, user.lng]
    users = User.all.select do |nearby_user|
      nearby_user_loc = [nearby_user.lat, nearby_user.lng]
      if distance(user_loc, nearby_user_loc) < max_distance
        {
          lat: nearby_user.lat,
          lng: nearby_user.lng
        }
      end
    end
    render json: users, status: 200
  end

  private

    def distance(loc1, loc2)
      # src https://gist.github.com/zulhfreelancer/15071f8678bcb38442648eda8dfcf387
      rad_per_deg = Math::PI/180  # PI / 180
      rkm         = 6371          # Earth radius in kilometers
      rm          = rkm * 1000    # Radius in meters

      dlat_rad    = (loc2[0]-loc1[0]) * rad_per_deg # Delta, converted to rad
      dlon_rad    = (loc2[1]-loc1[1]) * rad_per_deg

      lat1_rad    = loc1.map {|i| i * rad_per_deg }.first
      lat2_rad    = loc2.map {|i| i * rad_per_deg }.first

      a           = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
      c           = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

      rm * c # Delta in meters
    end
end
