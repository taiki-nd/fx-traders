Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#top'
  get "about",to: 'static_pages#about'
  resources :records do
    resources :comment_records
    collection do
      get 'search'
    end
  end
  resources :rules do
    resources :comment_rules
  end
  resources :users, only: [:edit, :update, :show]
end
