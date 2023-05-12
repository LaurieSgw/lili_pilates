Rails.application.routes.draw do
  get 'subscription/new'
  get 'subscription/create'
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :subscriptions, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[destroy]
  resources :reviews
  resources :courses
end
