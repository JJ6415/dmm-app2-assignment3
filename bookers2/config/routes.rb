Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show, :create, :destroy, :edit]
  resources :users, only: [:show, :index, :edit]
  get "about" => 'homes#about'
  get "user" => "users#show", :as => :user_root
end
