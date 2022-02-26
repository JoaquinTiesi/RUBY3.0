Rails.application.routes.draw do
  devise_for :users
  root "main#home"
  resources :peliculapersonajes
  resources :peliculas
  resources :generos
  resources :personajes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
