Rails.application.routes.draw do
  devise_for :users, skip: [:registrations, :password]
  root to: 'application#index'
  resources :admin, only: [:index] do
    collection do
      resources :trainers, only: [:edit, :update]
    end
  end
end
