Rails.application.routes.draw do
  resources :meetup_contacts
  resources :meetups
  resources :jobs
  resources :tasks
  resources :users, only: [:create, :update, :destroy, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
