class Users::PointOfInterestsController < ApplicationController
  def index
    user = User.john_tourist
    pois = user.point_of_interests
    output = pois.map do |poi|
      {
        name: poi.name,
        loc: [lat: poi.lat, lng: poi.lng],
        density: poi.density + rand(2)
      }
    end
    render json: output, status: 200
  end
end
