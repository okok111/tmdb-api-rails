Rails.application.routes.draw do
  devise_for :users
  get 'movies/search'
  root 'movies#search'
  resources :movies,only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello/index' => 'hello#index'
  resources :posts  
end



