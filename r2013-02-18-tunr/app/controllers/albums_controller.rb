class AlbumsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def index
    @albums = Album.order(:name)
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
    render :new
  end

  def show
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def purchase
    @album = Album.find(params[:id])
  end
  def buy
    @album = Album.find(params[:id])
    albumcost = []
    sum = '0'
    @album.songs.each do |sum|
        sum += @album.price

        @auth.balance -= sum
        @auth.save
        @album.save
      end
      @auth.albums << @album
    redirect_to(root_path)
  end

  def destroy
    album = Album.find(params[:id])
    album.delete
    redirect_to(albums_path)
  end
end