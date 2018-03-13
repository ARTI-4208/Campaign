Rails.application.routes.draw do
  resources :lista do
    resources :lista_clientes
  end
  resources :campaigns
  root 'lista#index'
  
end
