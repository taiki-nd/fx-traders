class LikeRulesController < ApplicationController

  before_action :rule_params

  def create
    LikeRule.create(user_id: current_user.id, rule_id: params[:id])
  end

  def destroy
    LikeRule.find_by(user_id: current_user.id, rule_id: params[:id]).destroy
  end

  private

  def rule_params
    @rule = Rule.find(params[:id])
  end

end
