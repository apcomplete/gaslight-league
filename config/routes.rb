Rails.application.routes.draw do
  devise_for :users, skip: [:registrations, :password], path: '', path_names: {:sign_in => 'login', :sign_out => 'logout'}
  root to: 'home#index'
  scope :admin do
    resources :trainers, only: [:index, :edit, :update]
  end
end
