Rails.application.routes.draw do
  get 'rsvps/create'
  resources :events, only: %i[index new create show]
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  root 'events#index'
end
