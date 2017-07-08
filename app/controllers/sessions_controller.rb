class SessionsController < ApplicationController

  def new
  end

  def guest
    redirect_to login_path
    flash[:danger] = "You need to login or create an account to do that."
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user and @user.authenticate(params[:session][:password_digest])
      session[:user_id] = @user.id
      redirect_to user_path(@user) if @user.roles.pluck(:name).exclude?('super-admin')
      redirect_to admin_dashboard_index_path if @user.roles.pluck(:name).include?('super-admin')
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
