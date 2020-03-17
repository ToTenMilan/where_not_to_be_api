class PointOfInterestsController < ApplicationController
  def index
    pois = User.find(params['user_id']).point_of_interests
    output = pois.map do |poi|
      {
        name: poi.name,
        loc: [lat: poi.lat, lng: poi.lng],
        density: 32
      }
    end
    render json: output, status: 200
  end
end
