Rails.application.routes.draw do
  resources :users, only: [:index] do
    resources :ad_points, only: [:update], controller: 'users/ad_points'
    resources :point_of_interests, only: [:index], controller: 'users/point_of_interests'
    resources :nearby_users, controller: 'users/nearby_users'
  end

  namespace :map_center do
    resources :point_of_interests, only: [:index]
  end

  resources :voivodeships, only: [:index]
  resources :advertisements, only: [:create] # hmmmm, creating ads to be discussed
end
