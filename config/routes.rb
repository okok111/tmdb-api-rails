Rails.application.routes.draw do
  get 'movies/search'
  get 'movies/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#search'
end
