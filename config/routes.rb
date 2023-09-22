Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  authenticated :user, lambda {|u| u.admin? } do
    resources :users do
      member do
        get 'postulaciones'
      end
    end
        resources :oferta_laborals do
      resources :postulacions, only: [:create]
    end
  end

  resources :oferta_laborals, only: [:index, :show] do
    resources :postulacions, only: [:create]
  end
  
  resources :postulacions, only: [:index, :show]
  
  root 'home#index'
end
