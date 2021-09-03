Rails.application.routes.draw do
  
  
  resources :users, only: [:new, :create, :show] 

  resources :ingredients, only:[:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create, :show]
  end
      
  
  resources :drinks do
    resources :measurements, only: [:new, :create, :index]
  end

  resources :reviews, only: [:show, :destroy]
  
  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  get '/', to: "welcome#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
