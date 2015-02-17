Rails.application.routes.draw do
  resources :renters

   root 'welcome#index'

   resources :tenants
end
