Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/pokemons/capture', as: 'capture'
  patch '/pokemons/damage', as: 'damage'
  get '/pokemons/new', as: 'new'
  # patch '/pokemons/create', as: 'create'
end
