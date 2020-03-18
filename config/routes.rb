Rails.application.routes.draw do
  resources :users, only: [] do
    resources :point_of_interests, only: [:index], controller: 'users/point_of_interests'
    resources :nearby_users, controller: 'users/nearby_users'
  end
end
