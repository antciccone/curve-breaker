class Admin::AttachmentController < ApplicationController

  def create
    attachment = Attachment.new(attachment_params)
    if attachment.save
      redirect_to admin_student_path(params[:attachment][:user_id])
    end
  end

  private

  def attachment_params
    params.require(:attachment).permit(:avatar, :user_id, :name)
  end

end
