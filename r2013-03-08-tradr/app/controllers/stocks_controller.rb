class StocksController < ApplicationController
  before_filter :only_authorized
  def index
    @stocks = @auth.stocks.order(:symbol)
  end
  def new
    @stock = Stock.new
  end
  def create
    @stock = Stock.create(params[:stock])
    @stock.value = @stock.get_quote
    @stock.save
    @auth.stocks << @stock
    @auth.cash_balance -= @stock.value
    @auth.stock_balance += @stock.value
    @auth.save
    @stocks = @auth.stocks.order(:symbol)
  end

  def chart
    render :json => @auth.stocks.where(:symbol => params[:symbol])
  end

  private
  def only_authorized
    redirect_to(root_path) if @auth.nil?
  end
end

