Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants, only: [:new, :show, :index, :create, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
