Rails.application.routes.draw do

  # get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :admin_users , only: [:new, :create, :destroy]
  resources :posts
  # resources :subscription
  root to: "home#index"

  get '/posts' => 'posts#post'
  get '/projetos' => 'project#project'
  get  '/subscriptions' => 'subscription#new'
  get '/posts/:id' => "posts#show"
  resources "subscription", only: [:new, :create]


end
