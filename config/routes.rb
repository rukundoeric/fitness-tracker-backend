Rails.application.routes.draw do
  get 'auth/create'
  get 'user/index'
  get 'user/show'
  post 'user/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
