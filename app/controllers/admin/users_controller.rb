class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && create_role
      redirect_to admin_dashboard_index_path
    else
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :grade, :address, :phone, :status)
  end

  def create_role
    if params[:user][:role] == "teacher"
      Teacher.create(name: params[:user][:name])
  end
end
