class UsersController < ApplicationController
  helper UsersHelper
  before_action :set_user, only:[:edit, :destroy, :update]
  def new
    @user = User.new
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_url
  end


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User saved successfully!"
      redirect_to root_url
    else
      flash[:danger] = "Unable to saved user!"
      redirect_to @user
    end
  end

  def destroy
    @user.destroy
    redirect_to @users
  end

  def index
    @users = User.all
  end

 

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :ssi)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
