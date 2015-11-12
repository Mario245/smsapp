Rails.application.routes.draw do
  resources :posts
  resources :smsmsgs
  resources :users
  root to: 'visitors#index'
  post 'post/twilio_create' =>'post#twilio_create'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
