Rails.application.routes.draw do
  root 'purchase_orders#index'

  resources :items
  resources :order_items
  resources :purchase_orders

  # require 'sidekiq/web'
  # mount Sidekiq::Web, at: '/sidekiq'

  # get "welcome/index"
  # post "welcome/trigger_job"
  # get "other/job_done"
  # root to: "welcome#index"

  get 'email', to: "users_mailer#index"
  post 'email', to: "users_mailer#trigger_job"

  get 'post', to: "posts#index"
  get 'post/', to: "posts#show", as: :show
  get 'post/new', to: "posts#new"
  post 'post/new', to: "posts#create"

  namespace :api do
    get('status' => 'status#index')
    get('consoles' => 'consoles#index')
  end

  get 'status', to: "status#index"
  get 'consoles', to: "consoles#index"
  get 'home', to: "home#index"
  get 'aboutgame', to: "about_game#index"

  get "about-us", to: "about#index", as: :about
  get "terms", to: "terms#index"
  get "privacy", to: "privacy#index"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/toshi123", to: "password_resets#toshi123", as: :reset_to_toshi123
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  delete "logout", to: "sessions#destroy"

  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  resources :twitter_accounts
  resources :tweets
  # get "twitter_accounts/:id"
  # delete "twitter_accounts/:id"

  # root to: "main#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
