class LikeRecordsController < ApplicationController

  before_action :record_params

  def create
    LikeRecord.create(user_id: current_user.id, record_id: params[:id])
  end

  def destroy
    LikeRecord.find_by(user_id: current_user.id, record_id: params[:id]).destroy
  end

  private

  def record_params
    @record = Record.find(params[:id])
  end
 
end
