Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  resources :hideouts do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]
  root to: 'hideouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboards', to: 'dashboards#dashboard'
end
