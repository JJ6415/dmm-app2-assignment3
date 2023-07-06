Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :index, :edit]
  get "about" => 'homes#about'
  get "books" => "books#index", :as => :user_root
end
