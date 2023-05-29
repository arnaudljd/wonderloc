Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :monuments

  resources :bookings, only: ['index', 'show', 'new', 'create', 'edit', 'update'] do
    resources :reviews, only: ['new', 'create']
  end

  resources :reviews, only: ['destroy']
end
