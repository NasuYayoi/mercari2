Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  get 'items/sell' => 'items#sell'
  get 'items/search' => "items#search"
  match 'dynamic_delivery_method', to: 'items#dynamic_delivery_method', via: [:get, :post] 
  resources :items do
    member do
      get 'buy'
      post 'pay'
    end
  end

  get 'user/identification' => 'users#identification'
  get 'user/prof' => 'users#prof'
  get 'user/mypage' => 'users#mypage'
  get 'user/payment' => 'users#payment'
  get 'user/credit' => 'users#credit'
  get 'user/logout' => "users#logout"
end
