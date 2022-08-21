Rails.application.routes.draw do
  root to: "stores#index"
  resources :stores
  resources :products, except: [:show]
end
