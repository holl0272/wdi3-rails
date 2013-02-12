R20130211Routing::Application.routes.draw do

get '/start' => 'home#start'
get '/a' => 'home#a'
get '/b' => 'home#b'
get '/redirect' => 'home#redirect'
get '/redirect_2' => 'home#redirect_2'
get '/page1' => 'home#page1'
get '/page2' => 'home#page2'
get '/page3' => 'home#page3'

root :to => 'start'
end
