class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @records = @user.records.order("created_at DESC").page(params[:page]).per(12)
    @rules = @user.rules.order("created_at DESC").page(params[:page]).per(8)
    @records_by_user = Record.where(user_id: @user.id)
    @pair_cat = @records_by_user.group(:pair_id).pluck(:pair_id)
    @all_pips = Record.where('pips not like?', '-%').pluck(:pips)
    @all_pips_ = Record.where('pips like?', '-%').pluck(:pips)
    @all_pf = @all_pips.sum/@all_pips_.sum.abs
    #直近1ヶ月
    @to = Date.current.at_end_of_day
    @from = @to - 1.month
    @records_by_user_month = Record.where(user_id: @user.id).where(created_at: @from...@to)
    @pair_cat_month = @records_by_user_month.group(:pair_id).pluck(:pair_id)
  end

end
