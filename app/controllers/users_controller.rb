class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

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
    @ad_5 = Advertisement.where(ad_rate_id: 5).order("RAND()").first
    @ad_5_ = Advertisement.where(ad_rate_id: 5).order("RAND()").second
    @ad_2 = Advertisement.where(ad_rate_id: 2).order("RAND()").first
    @ad_2_ = Advertisement.where(ad_rate_id: 2).order("RAND()").second
  end

  def index_records
    @user = User.find(params[:user_id])
    @records = Record.where(user_id: @user.id).includes(:user).order("created_at DESC").page(params[:page]).per(20)
    @ad_2 = Advertisement.where(ad_rate_id: 2).order("RAND()").first
  end

  def index_rules
    @user = User.find(params[:user_id])
    @rules = Rule.where(user_id: @user.id).includes(:user).order("created_at DESC").page(params[:page]).per(20)
    @ad_3 = Advertisement.where(ad_rate_id: 3).order("RAND()").first
    @ad_4 = Advertisement.where(ad_rate_id: 4).order("RAND()").first
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
