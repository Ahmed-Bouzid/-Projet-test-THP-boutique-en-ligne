Rails.application.routes.draw do
 root to: 'home#index'

 devise_for :users
 resources :home
 resources :cart
 resources :items
 resources :orders
 resources :charges, only: [:new, :create]

 get 'item/:id', to: 'home#show'

 get 'carts/add/:id', to: 'cart#add_item', as: 'add_item'
 get 'carts/delete/:id', to: 'cart#delete_item', as: 'delete_item'



end
