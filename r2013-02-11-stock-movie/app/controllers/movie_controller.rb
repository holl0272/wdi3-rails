class MovieController < ApplicationController
  def moviehome
  end

  def film
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    @hash = JSON(html)
  end
end

