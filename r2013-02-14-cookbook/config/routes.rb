R20130214Cookbook::Application.routes.draw do
  resources :books, :recipes, :ingredients, :movies
  get '/' => 'home#home'
  root :to => 'home#home'

end
