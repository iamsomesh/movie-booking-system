Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'
  resources :movies
  resources :showtimes
  resources :bookings, except: [:edit, :update]
end
