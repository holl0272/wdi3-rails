R20130319PhotoAlbm::Application.routes.draw do

  root :to => 'home#index'

  resources :albums do
    member do
      get :filter
    end
  end

  resources :photos
end
