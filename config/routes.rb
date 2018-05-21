Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  resources :hideouts
  resources :bookings, only: [:index, :create]
  root to: 'hideouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
