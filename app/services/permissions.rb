class Permissions
  def initialize(user, controller, action)
    @user = user
    @controller = controller
    @action = action
  end

  def allow?
    if user.super_admin?
      super_admin_permissions
    else
      guest_permissions
    end
  end

  private
    attr_reader :user, :controller, :action

    def super_admin_permissions
      return true if controller == "admin/dashboard" && action.in?(%w(index ))
      return true if controller == "admin/student" && action.in?(%w(show ))
      return true if controller == "sessions" && action.in?(%w(new create destroy guest))
    end

    def guest_permissions
      return true if controller == "sessions" && action.in?(%w(new create destroy guest))
      return true if controller == "users" && action.in?(%(new create))
    end
end
