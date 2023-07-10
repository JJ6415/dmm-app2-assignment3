Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show, :create, :destroy, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]
  get "home/about" => 'homes#about'
end
