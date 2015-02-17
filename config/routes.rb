Rails.application.routes.draw do
  resources :renters
  resources :users
  resources :tenants

   root 'welcome#index'
end
