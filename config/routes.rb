Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'


  resources :users
  resources :clubs, only: [:index, :show]

  resources :users do
    resources :clubs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
