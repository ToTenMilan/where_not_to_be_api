Rails.application.routes.draw do
  namespace :users do
    get 'ad_points/update'
  end

  resources :users, only: [:index] do
    resources :users, only: [:update], controller: 'users/ad_points'
    resources :point_of_interests, only: [:index], controller: 'users/point_of_interests'
    resources :nearby_users, controller: 'users/nearby_users'
  end
end
