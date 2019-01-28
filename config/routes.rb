Rails.application.routes.draw do
  devise_for :users

  root  'items#index'
  resources :items, only: [:index, :show, :new, :create]
  resources :users, only: [:show, :edit]
  get 'user/prof' => 'users#prof'
  get 'user/mypage' => 'users#mypage'
  get 'user/logout' => "users#logout"

end
