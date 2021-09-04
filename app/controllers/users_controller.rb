class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @records = user.records.order("created_at DESC").page(params[:page]).per(12)
    @rules = user.rules.order("created_at DESC").page(params[:page]).per(8)
  end

end
