Rails.application.routes.draw do
  devise_for :users
  root to: 'static#menu'

  resources :menu_items
  resources :order_items, only: [:create, :update, :destroy]
  resource :carts, only: [:show]
  post "/lucky", to: "carts#lucky"

end
