class SongsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def index
    @songs = Song.order(:name)
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def edit
    @song = Song.find(params[:id])
    render :new
  end
  def show
    @song = Song.find(params[:id])
  end
  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def destroy
    @song = Song.find(params[:id])
    @auth.balance += (@song.price * 0.7)
    @auth.save
    @song.save

    song = Song.find(params[:id])
    song.delete
    redirect_to(songs_path)
  end

  def purchase
    @song = Song.find(params[:id])
  end
  def buy
    @song = Song.find(params[:id])
    @auth.balance -= @song.price
    @auth.save
    @song.save

    mixtape_ids = params[:song][:mixtape_ids]
    mixtape_ids.each do |id|
      mixtape = Mixtape.find(id)
      mixtape.songs << @song
    redirect_to(root_path)
    end
  end

end
