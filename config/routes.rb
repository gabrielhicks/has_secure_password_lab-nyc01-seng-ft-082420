Rails.application.routes.draw do
  # get "/users", to: "users#index", as: "users"
  # get "/signup", to: "users#new", as: "signup"
  # post "/signup", to: "users#create"
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  root 'welcome#home'
end
