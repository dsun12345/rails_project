Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users/new', to: 'users#new', as: 'new_user'
  root 'static_pages#home'
  get '/users', to:'users#index', as: 'users'
  post '/users', to:'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/playlists', to: 'playlists#index', as: 'playlists'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  get '/playlists/new', to: 'playlists#new', as: 'new_attraction'
  get '/playlists/:id', to: 'playlists#show', as: 'attraction'
  get '/playlists/:id/edit', to: 'playlists#edit', as: 'edit_attraction'
  patch '/playlists/:id', to: 'playlists#update'
  post '/playlists', to: 'playlists#create'
  post '/songs', to:"songs#create", as: 'songs'

end
