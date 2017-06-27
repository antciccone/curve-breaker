class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && create_role(@user)
      redirect_to admin_dashboard_index_path
    else
      redirect_to new_user_path
    end
  end

  def show
    if Teacher.find_by_email(current_user.email).users.pluck(:id).include?(params[:id].to_i)
      @user  = User.find(params[:id])
      @lesson = Lesson.new
    else
      redirect_to user_path(current_user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :grade, :address, :phone, :status)
  end

  def create_role(user)
    if params[:user][:role] == "teacher"
      user.roles.create(name: 'teacher')
      Teacher.create(name: params[:user][:name], email: params[:user][:email], phone: params[:user][:phone])
    end
  end
end
