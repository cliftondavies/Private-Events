Rails.application.routes.draw do
  resources :events, only: %i[index new create show]
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  root 'users#show'
end
