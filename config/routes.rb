Rails.application.routes.draw do
  devise_for :users
  resources :gigs
  #get 'home/index'
  #root 'home#index'
  root 'home#index'

  get 'search',  to: "gigs#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
