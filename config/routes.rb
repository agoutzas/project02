Rails.application.routes.draw do


  root :to=> 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :mixtapes, :only => [:new, :create]
  #login is not crud
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



end
