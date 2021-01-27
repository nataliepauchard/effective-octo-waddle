Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/edit'
  # get 'reviews/show'
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
