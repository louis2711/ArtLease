Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artpieces, only: [:index, :new, :create, :edit, :update, :destroy]

  get "artpieces/:id", to: "artpieces#show"
  # , as: :artpiece

  resources :bookings, only: [:index, :create]

  get 'dashboard', to:'pages#dashboard'

end

