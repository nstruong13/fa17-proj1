Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'home/index', to: 'pokemons#capture', as: 'capture'
  get 'home/index', to: 'home#index'
  patch 'trainers#show', to: 'pokemons#damage', as: 'damage'
  get 'pokemon/new', to: 'pokemons#new'
  post 'pokemon/new', to: 'pokemons#create'
end
