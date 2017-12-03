Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :tags
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
