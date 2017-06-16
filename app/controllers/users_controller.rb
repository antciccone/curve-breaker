class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # @user.roles << Role.find_by_name("registered")
      flash[:success] = "Logged in as #{@user.name}"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:danger] = "Must enter info in all fields."
      redirect_to new_user_path
    end
  end

  def show
    require "pry"; binding.pry
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    user = current_user
    user.update(user_params)
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
