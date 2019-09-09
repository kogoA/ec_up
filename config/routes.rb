Rails.application.routes.draw do
  get 'inquiry/index'
  post 'inquiry/confirm'
  post 'inquiry/thanks'
  root 'products#index'
  devise_for :admins
  devise_for :users
  resource :charge, only: %i(create)
  resources :products
  resources :baskets
  resources :products do
    resource :favorites, only: [:create, :destroy]
  end
  resources :users

  namespace :admins do
    root to: "dashboards#index"
    resources :products
    resource :sales_record, only: %(show)
  end
end