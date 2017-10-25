Rails.application.routes.draw do
  root to: 'static#menu'

  resources :menu_items
  resources :order_items, only: [:create, :update, :destroy]
  resource :carts, only: [:show]
end
