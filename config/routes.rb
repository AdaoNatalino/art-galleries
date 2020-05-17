Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/artists', to: 'artists#index', as: 'artists'
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  post '/artists', to: 'artists#create'
  get '/artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  patch '/artists/:id', to: 'artists#update'
  delete '/artists/:id', to: 'artists#destroy'

  get '/paintings', to: 'paintings#index', as: 'paintings'
  get '/paintings/new', to: 'paintings#new', as: 'new_painting'
  get '/paintings/:id', to: 'paintings#show', as: 'painting'
  post '/paintings', to: 'paintings#create'
  get '/paintings/:id/edit', to: 'paintings#edit', as: 'edit_painting'
  patch '/paintings/:id', to: 'paintings#update'
  delete '/paintings/:id', to: 'paintings#destroy'

  get '/galleries', to: 'galleries#index', as: 'galleries'
  get '/galleries/new', to: 'galleries#new', as: 'new_gallery'
  get '/galleries/:id', to: 'galleries#show', as: 'gallery'
  post 'galleries', to: 'galleries#create'
  get '/galleries/:id/edit', to: 'galleries#edit', as: 'edit_gallery'
  patch '/galleries/:id', to: 'galleries#update'
  delete '/galleries/:id', to: 'galleries#destroy'
end
