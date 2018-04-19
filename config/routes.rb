Rails.application.routes.draw do
  devise_for :customers
  resources :images
  resources :products do
    resources :stocks, only:[:index,:new, :create, :update, :edit]
  end
  resources :top, only: [:index, :show]
  root 'top#index'

  resources :customers, only:[:show]
  get 'customers/:id/edit/default', to: 'customers#edit_default'
  get 'customers/:id/edit/email', to: 'customers#edit_email'
  patch 'customers/:id/confirm/default', to: 'customers#confirm_default'
  patch 'customers/:id/edit/default', to: 'customers#update_default'
  patch 'customers/:id/edit/email', to: 'cuscotmers#update_email'
end
