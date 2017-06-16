class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Logged in as #{@user.name}"
      session[:user_id] = @user.id
      redirect_to admin_dashboard_index_path
    else
      flash[:danger] = "Must enter info in all fields."
      redirect_to new_user_path
    end
  end

  def show
    # require "pry"; binding.pry
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    User.find(params[:id]).update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :grade, :address, :phone, :status)
  end
end
