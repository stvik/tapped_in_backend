Rails.application.routes.draw do
  resources :user_brews
  resources :users, only: [:index, :create]
  get '/users/login', to: 'users#login', as: 'login'
  resources :breweries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
