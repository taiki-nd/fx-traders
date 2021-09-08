Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#top'
  get "about",to: 'static_pages#about'
  resources :records
  resources :rules
  resources :users, only: [:edit, :update, :show]
end
