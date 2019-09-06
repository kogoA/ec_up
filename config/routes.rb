Rails.application.routes.draw do
  get 'inquiry/index'
  post 'inquiry/confirm'
  post 'inquiry/thanks'
  devise_for :admins
  devise_for :users
  root 'products#index'
  resource :charge, only: %i(create)
  resources :products
  resources :baskets
  resources :contacts

  namespace :admins do
    root to: "dashboards#index"
    resources :products
    resource :sales_record, only: %(show)
  end
end