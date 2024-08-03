Rails.application.routes.draw do
  root 'pages#index'
  
  # Named routes
  get 'pages/index', to: 'pages#index', as: 'index'
  get 'pages/about', to: 'pages#about', as: 'about'
  get 'pages/technology', to: 'pages#technology', as: 'technology'
  get 'pages/deportes', to: 'pages#deportes', as: 'deportes'

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
