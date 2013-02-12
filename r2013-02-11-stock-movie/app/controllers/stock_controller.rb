class StockController < ApplicationController
  def stockhome
  end

  def quote
    if params[:symbol].present?
      @symbol = params[:symbol].upcase
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
    end
  end

end