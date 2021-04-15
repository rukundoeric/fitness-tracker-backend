Rails.application.routes.draw do
  post 'sign_up' => 'user#create', as: 'sign_up'
  post 'sign_in' => 'auth#create', as: 'sign_in'

  resources :user, only: %i[index show update]
  resources :things_to_measure, only: %i[index create destroy show]
  resources :measurement, only: %i[index create show destroy]
  resources :progress, only: %i[index]
end
