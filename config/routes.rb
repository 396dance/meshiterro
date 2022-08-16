Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users

  # ７つのルーティングを一括生成(今回は下の３つだけ +createも)
  resources :post_images, only: [:new, :create, :index, :show]

  get '/homes/about' => 'homes#about', as:'about'


end
