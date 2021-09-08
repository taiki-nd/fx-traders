class CommentRecordsController < ApplicationController

  def create
    @comment_record = CommentRecord.create(comment_record_params)
    redirect_to "/records/#{@comment_record.record.id}"
  end

  private

  def comment_record_params
    params.require(:comment_record).permit(:text).merge(record_id: params[:record_id])
  end
end
