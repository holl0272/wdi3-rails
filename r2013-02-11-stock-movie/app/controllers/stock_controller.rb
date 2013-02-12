class StockController < ApplicationController
  def stockhome
  end

  def quote
      @symbol = params[:symbol].upcase
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end
end