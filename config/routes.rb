Rails.application.routes.draw do
  # get 'recipes/index'
  # get 'recipes/new'
  # get 'recipes/edit'
  # get 'recipes/show'
  # get 'session/new'
  # get 'users/new'
  # get 'pages/home'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :recipes
  resources :reviews

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
