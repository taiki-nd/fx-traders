class RecordsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :set_record, only: [:edit, :update, :show, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]
  before_action :set_ad_2, only: [:index, :search, :show]
  before_action :set_record_rank, only: [:index, :new, :edit, :search, :show]

  impressionist actions: [:index, :show]

  def index
    @records = Record.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @record.update(record_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def show
    @record_ranks = Record.last_week
    @comment_record = CommentRecord.new
    @comment_records = @record.comment_records
    @ad_5_ = Advertisement.where(ad_rate_id: 5).order("RAND()").second
    @ad_5__ = Advertisement.where(ad_rate_id: 5).order("RAND()").third
    impressionist(@record, nil, unique: [:session_hash])
  end

  def destroy
    @record.destroy
    redirect_to records_path
  end

  def search
    @results = @q.result.order("created_at DESC").page(params[:page]).per(20)
  end

  private

  def record_params
    params.require(:record).permit(:date, :ashi_id, :pair_id, :kind_id, :entry_rate, :exit_rate, :pips, :entry_basis, :issue_id, :lose_reason_id, :lose_reason_text, :image, :indi_main_id, :indi_sub_id, :order_id).merge(user_id: current_user.id)
  end

  def set_record
    @record = Record.find(params[:id])
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @record.user_id
      redirect_to action: :index
    end
  end

  def set_q
    @q = Record.ransack(params[:q])
  end

  def set_ad_2
    @ad_2_ = Advertisement.where(ad_rate_id: 2).order("RAND()").second
    @ad_2__ = Advertisement.where(ad_rate_id: 2).order("RAND()").third
  end

  def set_record_rank
    @record_ranks = Record.last_week
    @ad_2 = Advertisement.where(ad_rate_id: 2).order("RAND()").first
    @ad_5 = Advertisement.where(ad_rate_id: 5).order("RAND()").first
  end

end
