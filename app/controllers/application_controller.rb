class ApplicationController < ActionController::API
  private

  def current_user
    @current_user ||= User.john_tourist
  end

  def distance(loc1, loc2)
    CountDistance.new(loc1, loc2).call
  end
end
