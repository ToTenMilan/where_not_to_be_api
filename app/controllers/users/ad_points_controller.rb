class Users::AdPointsController < ApplicationController
  def update
    ## PATCH request every 15 min to add point
    user = User.john_tourist
    points = user.points + 1
    user.update(points: points)
  end
end
