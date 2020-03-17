Rails.application.routes.draw do
  resources :users, only: [] do
    resources :point_of_interests, only: [:index]
    resources :nearby_users, only: [:index]
  end
end
