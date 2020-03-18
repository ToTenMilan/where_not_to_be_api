class Users::AdPointsController < ApplicationController
  def update
    user = User.find(params[:user_id])

    user.update(user_params)
  end

  private

    def user_params
      params.require(:user).permit(:points)
    end
end
