Rails.application.routes.draw do
  resources :events
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  root 'users#show'
end
