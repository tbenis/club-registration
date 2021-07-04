Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#create'


  resources :users
  resources :clubs#, only: [:index, :show, :new]

  resources :users do
    resources :clubs
  end

  resources :clubs do
    resources :users
  end

  resources :clubs do
    resources :club_users
  end
  # http://127.0.0.1:3000/clubs/1/club_users/new

  resources :users do
    resources :club_users
  end
  # resources :users do
  #   resources :club_users, shallow: true ##shallow: true routing to avoid deep nesting
  # end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
