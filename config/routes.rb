Rails.application.routes.draw do
  # get 'session/new'
  # get 'events/new'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :dropzones
  resources :events
  post '/events/:id/attend' => 'events#attend', :as => 'attend'
  post '/events/:id/unattend' => 'events#unattend', :as => 'unattend'
end
