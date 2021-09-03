class RulesController < ApplicationController

  before_action :authenticate_user! expect: [:index, :show]
  before_action :set_rule, only: [:edit, :update, :show]

  def index
    @rules = Rule.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(rule_params)
    if @rule.save
      redirect_to rules_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @rule.update
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def show
    
  end

  private

  def rule_params
    params.require(:rule).permit(:name, :ashi_id, :pair_id, :entry, :exit, :issue_id, :overview, :overview_content, :summary, :image).merge(user_id: current_user.id)
  end

end
