Rails.application.routes.draw do

  resources :proposals do
    resources :comments
    resources :experiments
  end

  resources :experiments do
    resources :comments
    resources :procedures
  end

  resources :observations do
    resources :comments
  end

  resources :comments


  root 'proposals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
