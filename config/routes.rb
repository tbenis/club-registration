Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'

  resources :users
  resources :clubs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
