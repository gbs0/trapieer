Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, :path => 'users'

 resource :user,  only: [:show] do
   resources :products, only: [:show]
 end

  resources :products do
    get 'buy'
  	resources :transactions, only: [:new, :create]
  end

  resources :transactions, only: [:show, :index]
end


