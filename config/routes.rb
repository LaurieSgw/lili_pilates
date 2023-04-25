Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :courses do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[destroy]
  resources :reviews
end
