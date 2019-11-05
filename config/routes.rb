Rails.application.routes.draw do



  root :to=> 'pages#home'
  resources :users #:only => [:new, :create, :index]
  #change this to teacher? instead of users? or add only if teacher returns true

  resources :folders #:only => [:new, :index, :create, :edit, :update, :show, :destroy]
  #only students can create folders
  resources :resources #:only => [:new, :create, :edit, :update, :show, :destroy]



  #login is not crud
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



end
