class RulesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_rule, only: [:edit, :update, :show, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

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
    if @rule.update(rule_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def destroy
    @rule.destroy
    redirect_to rules_path
  end

  def show
    @comment_rule = CommentRule.new
    @comment_rules = @rule.comment_rules
  end

  private

  def rule_params
    params.require(:rule).permit(:name, :ashi_id, :pair_id, :entry, :exit, :issue_id, :overview, :overview_content, :summary, :image).merge(user_id: current_user.id)
  end

  def set_rule
    @rule = Rule.find(params[:id])
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @rule.user_id
      redirect_to action: :index
    end
  end

end
