Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  resources :hideouts do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:index, :update]

  root to: 'homes#home'
  get 'dashboards', to: 'dashboards#dashboard'
  get 'homes',      to: 'homes#home'
  get 'dashbooks',  to: 'dashbooks#dashbook'
end
