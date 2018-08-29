Rails.application.routes.draw do
 root to: 'home#index'

 devise_for :users
 resources :home
 resources :items
 resources :orders
 resources :charges, only: [:new, :create]

 get 'item/:id', to: 'home#show', as: 'one_item'

end
