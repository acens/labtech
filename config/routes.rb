Rails.application.routes.draw do

  get 'messages/new'

  # get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :admin_users , only: [:new, :create, :destroy]

  root to: "home#index"

# Blog:
    resources :blog

# posts :
    resources :post
    get '/posts' => 'posts#post'
    get '/posts/:id' => "posts#show", as: :postagem_show

# About Us
    get '/about' => 'home#about'

 # Projects
    get '/projetos' => 'project#project'

# Subscription
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

# Contact Us
  match '/fmails',     to: 'fmails#new',             via: 'get'
  resources "fmails", only: [:new, :create]

end
