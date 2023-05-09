Rails.application.routes.draw do
  devise_for :users
  root to: "pages#deposit"

  resources :users, only: [:index, :show] do
    resources :bottles, only: [:index, :show, :new, :create, :destroy]
  end

  get "zipcode", to: "pages#zipcode", as: "zipcode"
  # get "/index", to: "pages#index"
  # get "bottles/:id", to: "bottles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
