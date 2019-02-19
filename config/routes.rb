Rails.application.routes.draw do
  get '/signup', to: "users#new"
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/login', to: 'static_pages#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
