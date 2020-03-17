Rails.application.routes.draw do
  resources :users, only: [] do
    resources :point_of_interests, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
