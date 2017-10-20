Rails.application.routes.draw do
  root to: 'menu_items#index'

  resources :menu_items
end
