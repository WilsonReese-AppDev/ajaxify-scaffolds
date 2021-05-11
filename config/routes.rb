# == Route Map
#

Rails.application.routes.draw do
  root "movies#index"

  resources :characters
  resources :actors
  resources :directors
  resources :movies

  get "movies/:id/title/edit" => "movies#edit_title", as: :edit_title

end
