Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#top'
  get "about",to: 'static_pages#about'
  resources :records do
    resources :comment_records
  end
  resources :rules
  resources :users, only: [:edit, :update, :show]
end
