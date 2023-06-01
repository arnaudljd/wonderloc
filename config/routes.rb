Rails.application.routes.draw do
  devise_for :users
  root to: "monuments#index"

  get :dashboards, to: 'dashboards#profile', as: :dashboard

  resources :monuments do
    resources :bookings, only: ['new', 'create']
  end

  resources :bookings, only: ['index', 'show', 'edit', 'update'] do
    resources :reviews, only: ['new', 'create']
  end

  patch '/bookings_accept/:id', to: 'bookings#accepted', as: 'accepted'
  patch '/bookings_reject/:id', to: 'bookings#rejected', as: 'rejected'

  resources :reviews, only: ['destroy']
end
