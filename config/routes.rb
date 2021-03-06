Rails.application.routes.draw do
  resources :events, only: %i[index new create show] do
    resources :rsvps, only: :create
  end
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  root 'events#index'
end
