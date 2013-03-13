class UsersController < ApplicationController
  def index
    @users = User.order(:name)
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(users_path)
    else
      render :new
    end
  end
  def edit
    @user = @auth
    render :new
  end
  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end
end




