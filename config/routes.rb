Rails.application.routes.draw do
  resources :member_instruments
  resources :songs
  resources :instruments
  resources :albums
  resources :band_members
  resources :bands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
