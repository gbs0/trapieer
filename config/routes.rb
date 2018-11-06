
Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:new, :create, :edit, :update] do 	#Rotas edit & update ñ serão utilizadas na apresentação
    resources :products # Rotas destroy, edit & update ñ serão utilizadas na apresentação 
    resources :transactions, :only: [:create, :index]
  end
end
