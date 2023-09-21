Rails.application.routes.draw do
  # config/routes.rb

devise_for :users, skip: :registrations

  resources :postulacions
  resources :oferta_laborals
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
