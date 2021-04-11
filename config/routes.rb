Rails.application.routes.draw do
  post 'sign_up' => 'user#create', as: 'sign_up'
  post 'sign_in' => 'auth#create', as: 'sign_in'
  get 'get_user/:id' => 'user#show', as: 'get_user'
  
  resources :things_to_measures, only: %i[index create delete]
end
