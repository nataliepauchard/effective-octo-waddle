Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  # resources :recipes do
  resources :recipes
  resources :reviews
 # end
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
