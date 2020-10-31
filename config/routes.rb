Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #LESSONS ROUTES
  resources :lessons do
    resources :bookings, only: [ :new, :create, :edit, :update, :destroy ]
  end

  #users routes
  resources :users, only: [ :show, :edit, :update, :destroy ]

  #bookings routes
  resources :bookings, only: [ :index, :show ]
end
