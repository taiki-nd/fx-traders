class CommentRecordsController < ApplicationController

  def create
    @comment_record = CommentRecord.create(comment_record_params)
    redirect_to "/records/#{@comment_record.record.id}"
  end

  def destroy
    @record = Record.find(params[:record_id])
    comment = @record.comment_records.find(params[:id])
    comment.destroy 
    redirect_to "/records/#{comment.record.id}"
  end

  private

  def comment_record_params
    params.require(:comment_record).permit(:text).merge(record_id: params[:record_id])
  end
end
