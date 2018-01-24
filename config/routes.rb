Rails.application.routes.draw do

  # get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :admin_users , only: [:new, :create, :destroy]

  root to: "home#index"

# posts :
    resources :post
    get '/posts' => 'posts#post'
    get '/posts/:id' => "posts#show", as: :postagem_show

# About Us
    get 'home/about' => 'home#about'

 # Projects
    get '/projetos' => 'project#project'

# Subscription
    get  '/subscriptions' => 'subscription#new'
    resources "subscription", only: [:new, :create]


end
