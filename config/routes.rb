Rails.application.routes.draw do

  root :to => 'pages#index'
  resources :tutors
  

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :students
  resources :articles
  resources :programs
  resources :results
end
