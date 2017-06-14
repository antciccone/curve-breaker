class SessionsController < ApplicationController

  def new
  end

  def guest
    redirect_to login_path
    flash[:danger] = "You need to login or create an account to do that."
  end

  def create
    require "pry"; binding.pry
    @user = User.find_by(email: params[:session][:email])
    if @user and @user.authenticate(params[:session][:password_digest])
      session[:user_id] = @user.id
      redirect_to admin_dashboard_index_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "You Successfully Logged out!"
    redirect_to login_path
  end

end
