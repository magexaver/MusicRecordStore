Rails.application.routes.draw do
  get 'up' => "rails/health#show", as: :rails_health_check

  resources :users, only: %i(index show)
  resources :music_records, only: %i(index show)
  resources :orders, only: :create
  resources :rents, only: :create
end
