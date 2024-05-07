Rails.application.routes.draw do
  resources :posts
  resources :reviews
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check
end
