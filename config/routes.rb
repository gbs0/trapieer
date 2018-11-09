Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products do
    get 'buy'
  	resources :transactions, only: [:new, :create]
  end
  resources :transactions, only: [:show, :index]
end


