# == Route Map
#

Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies

  get "movies/:id/title/edit" => "movies#edit_title", as: :edit_title
  get "movies/:id/year/edit" => "movies#edit_year", as: :edit_year
  get "movies/:id/director/edit" => "movies#edit_director", as: :edit_movie_director
  get "movies/:id/description/edit" => "movies#edit_description", as: :edit_description
  get "movies/:id/duration/edit" => "movies#edit_duration", as: :edit_duration

end
