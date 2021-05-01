
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home', as: :home
  resources :events do
    resources :actors, only: [:new, :create]
    resources :actor_events, only: [:new, :create]
    resources :eventinfos, only: [:new, :create, :update]
  end
  resources :eventinfos, only: [:destroy]
end
