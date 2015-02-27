Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  scope do
  	resources :users, path: 'all_users'
  end
end
