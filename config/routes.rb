Rails.application.routes.draw do
  resources :profiles
  namespace :users do
    end
  root to: 'visitors#index'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  resources :users
  # patch 'update_password', on: :collection
  devise_scope :user do
    get 'users/edit/password' => 'users/registrations#edit_password'
    put 'users/edit/update_password/' => 'users/registrations#update_password'
  end
end
