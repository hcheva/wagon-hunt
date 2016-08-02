Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'products#index'


  get "/about" => "pages#about"
  get "/grid" => "pages#grid"

  resources :products
  resources :upvotes, only: [ :create, :destroy ]

  #read actions routes
  get "/products/:id" => "products#show"
  get "/products" => "products#index"

  #create actions routes
  get "/products/new" => "products#new"
  post "/products" => "products#create"

  #update actions routes
  get "/products/:id/edition" => "products#edit"
  patch "/products/:id" => "products#update"

  #delete actions routes
  delete "/products/:id" => "products#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
