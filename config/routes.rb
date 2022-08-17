Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users
  get '/homes/about' => 'homes#about', as:'about'

  # ７つのルーティングを一括生成(今回は下の5つだけ)
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  # ７つのルーティングを一括生成(今回は下の3つだけ)
  resources :users, only: [:show, :edit, :update]




end
