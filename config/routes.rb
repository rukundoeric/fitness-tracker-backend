Rails.application.routes.draw do
  get 'measurement/index'
  get 'measurement/show'
  get 'measurement/create'
  post 'sign_up' => 'user#create', as: 'sign_up'
  post 'sign_in' => 'auth#create', as: 'sign_in'
  get 'get_user/:id' => 'user#show', as: 'get_user'
  
  resources :things_to_measure, only: %i[index create destroy]
  resources :measurement, only: %i[index create show destroy]
end
