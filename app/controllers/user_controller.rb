class UserController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(name: params[:user][:name], pass: params[:user][:pass])
    redirect_to root_path
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.update(name: params[:user][:name], pass: params[:user][:pass])
    redirect_to root_path
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
