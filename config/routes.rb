Rails.application.routes.draw do
  root to: 'static#menu_items'

  resources :menu_items
end
