Rails.application.routes.draw do
  get 'sessions/new'
  get 'posts/new'
  get 'users/new'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  root 'static_pages#home'
  
  get '/home', to: 'static_pages#home'
  
  
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :posts, only: [:index, :new, :create]

end
