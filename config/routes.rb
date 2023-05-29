Rails.application.routes.draw do
  devise_for :users
  root to: "monuments#index"

  resources :monuments do
    resources :bookings, only: ['new', 'create']
  end

  resources :bookings, only: ['index', 'show', 'edit', 'update'] do
    resources :reviews, only: ['new', 'create']
  end

  resources :reviews, only: ['destroy']
end
