Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'products#index'
  resource :charge, only: %i(create)
  resources :products
  resources :baskets

  namespace :admins do
    root to: "dashboards#index"
    resources :products, only: %i(new create)
    resource :sales_record, only: %(show)
  end
end