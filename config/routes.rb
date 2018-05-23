Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  resources :hideouts do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]
  root to: 'hideouts#index'
  get 'dashboards', to: 'dashboards#dashboard'

end
