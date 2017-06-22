class Permissions
  def initialize(user, controller, action)
    @user = user || User.new
    @controller = controller
    @action = action
  end

  def allow?
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
      return true if controller == "admin/users" && action.in?(%w(new create show))
      return true if controller == "admin/pairing" && action.in?(%w(index destroy new create show, current_pairings))
      return true if controller == "users" && action.in?(%(show edit update))
    end

    def teacher_permissions
      return true if controller == "users" && action.in?(%(show edit update))
      return true if controller == "admin/users" && action.in?(%w(show))
    end

    def guest_permissions
      return true if controller == "sessions" && action.in?(%w(new create destroy guest))
      return true if controller == "users" && action.in?(%w(new create show edit update))
      return true if controller == "admin/pairing" && action.in?(%w(create))
    end
end
