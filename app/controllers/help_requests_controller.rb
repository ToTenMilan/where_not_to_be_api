# frozen_string_literal: true

class HelpRequestsController < ApplicationController
  def index
    render json: HelpRequestBlueprint.render(current_user.help_requests), status: 200
  end

  def nearby
    max_distance = params[:max_distance] || 170

    location = [params[:lat]&.to_f || current_user.lat, params[:lng]&.to_f || current_user.lng]

    requests = HelpRequest.requested.includes(:user).find_each.filter do |hr|
      hr_location = [hr.lat, hr.lng]
      distance(location, hr_location) < max_distance
    end

    render json: HelpRequestBlueprint.render(requests, view: :with_user), status: 200
  end

  def create
    help_request = HelpRequest.new(default_params.merge(help_request_params))

    if help_request.save
      render json: help_request, status: 201
    else
      render json: { errors: help_request.errors }, status: 422
    end
  end

  def cancel
    help_request.cancelled!
    head 204
  end

  def finish
    help_request.done!
    head 204
  end

  private

  def help_request
    current_user.help_requests.requested.find(params[:id])
  end

  def default_params
    { lat: current_user.home_lat, lng: current_user.home_lng }
  end

  def help_request_params
    params.require(:help_request)
          .permit(:request_type, :title, :description, :lat, :lng, :time_from, :time_to, :target , :unit)
          .merge(user: current_user)
  end
end
