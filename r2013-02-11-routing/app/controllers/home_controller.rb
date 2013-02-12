class HomeController < ApplicationController
  def start
  end

  def a
  end

  def b
  end

  def redirect
  case params['option'].downcase
    when '1' then redirect_to('/page1')
    when '2' then redirect_to('/page2')
    when '3' then redirect_to('/page3')
    end
  end

  def redirect_2
  case params['option']
    when 'a' then redirect_to('/a')
    when 'b' then redirect_to('/b')
    when '1' then redirect_to('/page1')
    when '2' then redirect_to('/page2')
    when '3' then redirect_to('/page3')
    end
  end

  def page1
    render 'page1'
  end

  def page2
    render 'page2'
  end

  def page3
    render 'page3'
  end

end