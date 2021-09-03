class RecordsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_record, only: [:edit, :update, :show]

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
    
  end

  private

  def record_params
    params.require(:record).permit(:date, :ashi_id, :pair_id, :entry_rate, :exit_rate, :pips, :entry_basis, :issue_id, :lose_reason_id, :lose_reason_text, :image).merge(user_id: current_user.id)
  end

  def set_record
    @record = Record.find(params[:id])
  end

end
