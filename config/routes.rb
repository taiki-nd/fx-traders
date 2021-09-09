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
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update, :show]
  post 'like_record/:id' => 'like_records#create', as: 'create_like_record'
  delete 'like_record/:id' => 'like_records#destroy', as: 'destroy_like_record'
  post 'like_rule/:id' => 'like_rules#create', as: 'create_like_rule'
  delete 'like_rule/:id' => 'like_rules#destroy', as: 'destroy_like_rule'
end
