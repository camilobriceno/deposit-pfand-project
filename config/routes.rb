Rails.application.routes.draw do
  devise_for :users
  root to: "pages#deposit"

  resources :users, only: [:index, :show] do
    resources :bottles, only: [:new, :create, :index, :show, :destroy]
  end

  resources :users do
    resources :bookings
  end

 # get "zipcode", to: "pages#zipcode", as: "zipcode"

   get "bottles/new", to: "bottles#new"
  # post "bottles", to: "bottles#create"
  # get "users/:id", to: "users#show"

  # get "bookings/:id", to: "bookings#show"
  # get "/index", to: "pages#index"
  # get "bottles/:id", to: "bottles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
