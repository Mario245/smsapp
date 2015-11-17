Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts
  resources :smsmsgs
  resources :users
  root to: 'visitors#index'
  post 'post/twilio_create' =>'post#twilio_create'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
=======
  root to: 'visitors#index'
  devise_for :users
  resources :users
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
end
