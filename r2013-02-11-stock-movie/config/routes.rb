R20130211StockMovie::Application.routes.draw do

get '/' => 'home#home'
get '/home' =>'home#home'
get '/about' => 'home#about'
get '/faq' => 'home#faq'
get '/stock/stockhome' => 'stock#stockhome'
get '/stock/quote' => 'stock#quote'
get '/movie/moviehome' => 'movie#moviehome'
get '/movie/film' => 'movie#film'

end
