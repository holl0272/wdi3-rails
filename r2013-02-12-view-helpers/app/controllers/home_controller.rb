class HomeController < ApplicationController
  def home
  end
  def numbers
    @amount = 234
    @large_number = 5678374623
    @phone = 6127030272
  end
  def text
    @numbers = (1..24).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = "a very long long time ago in a land far far away"
  end
  def assests
  end
  def url
  end
end
