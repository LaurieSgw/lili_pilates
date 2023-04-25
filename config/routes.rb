Rails.application.routes.draw do
devise_for :users do
  resources :reviews, only: %i[index new create]
end
resources :reviews, only: %i[show edit update destroy]
root to: "pages#home"
get "dashboard", to: "pages#dashboard"
resources :courses do
  resources :bookings, only: %i[new create]
end
resources :bookings, only: %i[destroy]
