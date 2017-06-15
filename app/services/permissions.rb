class Permissions
  def initialize(user, controller, action)
    @user = user || User.new
    @controller = controller
    @action = action
  end

  def allow?
#    require 'pry';binding.pry

    if user.super_admin?
      super_admin_permissions
    elsif user.teacher?
      teacher_permissions
    else
      guest_permissions
    end
  end

  private
    attr_reader :user, :controller, :action

    def super_admin_permissions
      return true if controller == "admin/dashboard" && action.in?(%w(index ))
      return true if controller == "admin/student" && action.in?(%w(show new ))
      return true if controller == "sessions" && action.in?(%w(new create destroy guest))
      return true if controller == "admin/teachers" && action.in?(%w( index))
    end

    def teacher_permissions
      return true if controller == "users" && action.in?(%(show edit update))
    end

    def guest_permissions
      return true if controller == "sessions" && action.in?(%w(new create destroy guest))
      return true if controller == "users" && action.in?(%(new create show edit update))
    end
end
