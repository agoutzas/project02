class UsersController < ApplicationController

  #before_action :check_for_teacher #, :only => [:index, :create, ]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new user_params
    if @user.save #returns truthy value on success
      session[:user_id] = @user.id # this remebers the user for the period
       redirect_to root_path
    else
    render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
