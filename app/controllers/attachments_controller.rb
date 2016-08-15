class AttachmentsController < ApplicationController
  def create
    @attachment = Attachment.new(attachment_params)
    @attachment.article_id = params[:article_id]
    @attachment.save
    flash.notice = "New Attachment added!"
    redirect_to article_path(@attachment.article)
  end

  def attachment_params
    params.require(:attachment).permit(:image)
  end
end
