Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :carts
  resources :inventories
  resources :products
  resources :product_carts
  resources :product_inventories

end
