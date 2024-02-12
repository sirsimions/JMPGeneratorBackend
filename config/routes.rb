Rails.application.routes.draw do
  resources :trucks
  resources :auths
  resources :maintenances
  resources :completed_trucks
  resources :finaltables
  resources :finaltemplates
  resources :newtemplates
  resources :templates
  resources :users

  resources :trucks do
    patch 'delay_entry', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/", to: 'users#show'
  delete '/del/:id', to: 'finaltables#destroy'
  delete '/dele/:id', to: 'completed_trucks#destroy'
  # get "/temp", to: "finaltables#show"
  get "/dat", to: "finaltables#index"
  # get '/complete', to: 'completed_trucks#complete'
  get '/completed', to: 'completed_trucks#show'
  get '/usersshow', to: 'maintenances#show'
  get '/finishedTrucks', to: 'completed_trucks#index'
  get "/serve", to: 'maintenances#show'
  post '/service', to: 'maintenances#create'
  post "/updates", to: "finaltables#create"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  get '/completed_trucks', to: 'maintenances#completed_trucks'
  post '/signup', to: 'auths#create'
  get '/users', to: 'auths#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  put '/maintenances/:id/update', to: 'maintenances#update'

  post '/trucks', to: 'trucks#create'
  
  
  # get "/index", to: "users#index"
  
  # post "/tempc", to: "finaltable#create"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
