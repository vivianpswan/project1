Rails.application.routes.draw do

  root :to => 'pages#welcome'
  resources :tutors

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :students
end
