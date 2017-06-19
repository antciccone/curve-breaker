class Admin::PairingController< ApplicationController

  def index
    @teachers = Teacher.all
    @students = User.all
  end

end
