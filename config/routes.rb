Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products

  get '/products/:id/description', to: 'products#inventory'
  get '/products/:id/inventory', to: 'products#description'
end
