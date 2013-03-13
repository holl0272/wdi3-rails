R20130308Tradr::Application.routes.draw do
  root :to => 'home#index'

  resources :users
  resources :stocks do
    member do
      get '/chart'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
