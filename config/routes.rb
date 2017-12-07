Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'

  get '/avaliadors/:avaliador_id/notas', to: 'notas#index_avaliador'
  get 'categoria/:categoria', to: 'inscritos#type'
  get '/usuario_atual', to: 'usuarios#show'

  resources :inscritos do
    resources :notas, only: [:index, :create]
  end
  resources :notas, only: [:update, :destroy]

  resources :usuarios, only: [:index, :create, :update, :destroy]
end
