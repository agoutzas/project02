class SessionController < ApplicationController
  def new
  end

  def create
    #reteieve user
    user = User.find_by :email => params[:email]
    #check if encrtypred passwords match
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id #remember the user from this moment on
      #redirect somewhere
      redirect_to root_path

    else
      flash[:error] = 'Invalid email address or password'
      redirect_to login_path # dont render becasue we dont to help a hacker
    end
  end




  def destroy
    session[:user_id] = nil
    redirect_to login_path

  end

end
