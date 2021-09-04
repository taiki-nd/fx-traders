class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @records = @user.records.order("created_at DESC").page(params[:page]).per(12)
    @rules = @user.rules.order("created_at DESC").page(params[:page]).per(8)
    @records_by_user = Record.where(user_id: @user.id)
    @pair_cat = Record.group(:pair_id).pluck(:pair_id)
  end

end
