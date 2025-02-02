Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#login'
  resources  :secrets, only: :index
  get '/welcome' => "secrets#show"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  post 'logout' => "sessions#destroy"
end
