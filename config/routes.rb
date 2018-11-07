Rails.application.routes.draw do
  root to: 'pages#home'
  get 'products', to: 'products#index', as: 'products' #If user id are not set(on controller)
  resources :users, only: [:new, :create, :edit, :update] do 	#Rotas edit & update ñ serão utilizadas na apresentação
    resources :products # Rotas destroy, edit & update ñ serão utilizadas na apresentação 
    resources :transactions, only: [:create, :index]
  end
end
