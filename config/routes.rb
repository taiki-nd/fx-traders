Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#top'
  get 'static_pages/about'
  resources :records
  resources :rules
end
