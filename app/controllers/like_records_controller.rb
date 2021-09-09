class LikeRecordsController < ApplicationController

  before_action :post_params

  def create
    Like.create(user_id: current_user.id, record_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, record_id: params[:id]).destroy
  end

  private

  def record_params
    @record = Record.find(params[:id])
  end
 
end
