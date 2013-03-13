class MixtapesController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]

  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.new(params[:mixtape])
    if @auth.mixtapes << @mixtape
      redirect_to(@mixtape)
    else
      render :new
    end
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end
  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end
  def update
    @mixtape = Mixtape.find(params[:id])
    if @mixtape.update_attributes(params[:mixtape])
      redirect_to(mixtape_path)
    else
      render :new
    end
  end
  def destroy
    mixtape = Mixtape.find(params[:id])
    mixtape.delete
    redirect_to(mixtape_path)
  end
end