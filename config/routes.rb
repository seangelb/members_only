Rails.application.routes.draw do
  get 'posts/new'
  get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/login', to: 'static_pages#login'
  resources :users
  
  resources :posts, only: [:index, :new, :create, :destroy]
  
end
