class AdvertisementsController < ApplicationController
  def create
    points = params[:points]
    render json: points, status: 200
  end
end
