R20130312Flirt::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :subscriptions, :only => [:new, :create]

  resources :subscribers, :only => [:new, :create] do
    collection do
      post :purchase
    end
  end

end
