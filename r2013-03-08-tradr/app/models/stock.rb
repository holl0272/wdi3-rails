# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  value      :float
#  quantity   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :value, :quantity
  belongs_to :user, :inverse_of => :stocks

  def get_quote
    begin
      YahooFinance::get_quotes(YahooFinance::StandardQuote, self.symbol)[self.symbol].lastTrade
    rescue
      retry
    end
  end
end