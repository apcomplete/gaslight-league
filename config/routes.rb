Rails.application.routes.draw do
  devise_for :users, skip: [:registrations, :password]
  root to: 'application#index'
end
