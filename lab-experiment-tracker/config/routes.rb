Rails.application.routes.draw do

  resources :proposals do
    resources :procedures
  end

  resources :experiments
  resources :observations
  resources :comments


  root 'proposals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
