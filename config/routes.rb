Rails.application.routes.draw do
  resources :gifs
  devise_for :users

  root 'gifs#index'


end
