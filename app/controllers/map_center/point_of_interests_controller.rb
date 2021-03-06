class MapCenter::PointOfInterestsController < ApplicationController
  # GET /map_center/point_of_interests?max_distance=200&map_center_lat=50.101010&map_center_lng=19.101010
  def index
    map_center_location = [params[:map_center_lat].to_f, params[:map_center_lng].to_f]

    nearby_pois = PointOfInterest.all.map do |poi|
      poi_location = [poi.lat, poi.lng]
      if DistanceCalc.new(poi_location, map_center_location).call < max_distance
        [
          name: poi.name,
          lat: poi.lat,
          lng: poi.lng,
          density: rand(5..20)
        ]
      end
    end.compact.flatten

    render json: nearby_pois, status: 200
  end
end
