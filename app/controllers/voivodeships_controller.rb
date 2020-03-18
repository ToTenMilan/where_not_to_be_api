class VoivodeshipsController < ApplicationController
  def index
    voivodeships = Voivodeship.all

    output = {}
    voivodeships.each do |vv|
      total_points = 0
      vv.users.each do |user|
        total_points += user.points
      end
      output[vv.name] = total_points
    end

    render json: output, status: 200
  end
end
