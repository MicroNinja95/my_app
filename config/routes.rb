Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :categories
  resources :publishers
  root 'books#index'
end
