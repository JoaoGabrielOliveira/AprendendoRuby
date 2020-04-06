Rails.application.routes.draw do
  resources :linguagens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pagina_principal#index"

  get 'sobre', to: 'pagina_principal#sobre'

  get 'linguagens', to: 'linguagens#index'

  get 'linguagens/new', to: 'linguagens#new'
  post 'linguagens/new', to: 'linguagens#create'

  get 'linguagens/show', to: 'linguagens#show'
end
