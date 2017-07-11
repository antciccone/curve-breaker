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
    @user = current_user
    @sat = SatScore.new
    @act = ActScore.new
    @act_practice = ActPractice.new
    @sat_practice = SatPractice.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:rate, :parent_name, :parent_email, :parent_number, :name, :email, :password, :password_confirmation, :grade, :address, :phone, :status)
  end
end
