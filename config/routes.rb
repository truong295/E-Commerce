Rails.application.routes.draw do
  resources :checkout, only: [:new,:create]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "home#index"
  resources :manufacturers, only: :show
  resources :sub_categories
  resources  :products
  resources :categories
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
