Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
=======

>>>>>>> parent of 7f59a58... usersテーブルの作成
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end