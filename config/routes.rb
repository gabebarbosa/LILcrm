Rails.application.routes.draw do
  resources :comentarios
  resources :tipoatendimentos
  resources :caracteristicas
  resources :atendimentos, :has_many => :resposta




  resources :clientes
  #get 'sessions/new'
  #get 'users/new'
  resources :users
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'

  root 'sessions#new'



end
