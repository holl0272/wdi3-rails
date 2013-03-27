R20130325Numb3rs::Application.routes.draw do

  root :to => 'home#index'
  get '/word' => 'home#word'
  get '/word_total' => 'home#word_total'
end
