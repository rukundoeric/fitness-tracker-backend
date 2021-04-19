Rails.application.routes.draw do
  resourses :auth, only: %i[create]
  resources :user, only: %i[index show update create]
  resources :things_to_measure, only: %i[index create destroy show]
  resources :measurement, only: %i[index create show destroy]
  resources :progress, only: %i[index]
end
