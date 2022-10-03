Rails.application.routes.draw do
  get "about", to: "about#index"

  respond_to? to: "main#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
