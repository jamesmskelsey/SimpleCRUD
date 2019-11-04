Rails.application.routes.draw do
  root 'welcome#index'
  resources :purchases
  resources :stores
end
