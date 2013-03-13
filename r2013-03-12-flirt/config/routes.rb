R20130312Flirt::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  resources :subscribers, :only => [:new, :create]
end
