Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :show]

  resources :ingredients, only:[:index, :new, :create, :show]
  
  resources :drinks do
    resources :measurements, only: [:new, :create, :index]
  end

  get '/', to: "welcome#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
