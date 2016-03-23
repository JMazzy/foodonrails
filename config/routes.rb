Rails.application.routes.draw do
  root "maps#index"
  resources :maps, only: [:index]
  resources :users

  resource :session, :only => [:new, :create, :destroy]
  get "login" => "sessions#new"
  delete "logout" => "sessions#destroy"
end
