
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: :home
  resources :events do
    resources :actor_events, only: [:new, :create]
  end
end
