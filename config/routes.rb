Rails.application.routes.draw do
  get 'main/index'

  resources :rovers

  resources :grids

  root 'main#index'
end
