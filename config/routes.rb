Rails.application.routes.draw do
  root 'home#index'
  get '/pessoas', action: 'peoples', controller: 'home'
  get '/planetas', action: 'planets', controller: 'home'
  get '/filmes', action: 'films', controller: 'home'
  get '/especies', action: 'species', controller: 'home'
  get '/veiculos', action: 'vehicules', controller: 'home'
  get '/naves_estelares', action: 'starships', controller: 'home'

  get '/favoritos', action: 'index', controller: 'favorite'
  post '/favoritos/create', action: 'create', controller: 'favorite'
  delete '/favoritos/destroy/:id', action: 'destroy', controller: 'favorite'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
