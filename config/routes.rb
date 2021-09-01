Rails.application.routes.draw do
  resources :ingredients, only:[:index, :new, :create, :show]
  resources :measurements
  resources :drinks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
