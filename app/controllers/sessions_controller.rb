class SessionsController < ApplicationController

  def new
  end

  def guest
    redirect_to login_path
    flash[:danger] = "You need to login or create an account to do that."
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user and @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "You Successfully Logged in!"
      redirect_to root_path
    else
      flash[:danger] = "Email and password don't match"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "You Successfully Logged out!"
    redirect_to root_path
  end

end
