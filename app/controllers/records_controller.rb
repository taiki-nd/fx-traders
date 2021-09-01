class RecordsController < ApplicationController

  def index
    @records = Record.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def record_params
    params.require(:record).permit(:date, :ashi_id, :pair_id, :entry_rate, :exit_rate, :pips, :entry_basis, :issue_id, :lose_reason_id, :lose_reason_text, :image).merge(user_id: current_user.id)
  end

end
