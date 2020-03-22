Rails.application.routes.draw do

  root :to => 'pages#index'
  resources :tutors
  

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/programs/:id/:student_id' => 'programs#show'


  resources :students
  resources :articles
  resources :programs
  resources :results
end
