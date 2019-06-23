Rails.application.routes.draw do
  root 'homepage#index', as: 'homepage_index'

  resources :restaurants
end
