class CommentRulesController < ApplicationController

  def create
    @comment_rule = CommentRule.create(comment_rule_params)
    redirect_to "/rules/#{@comment_rule.rule.id}"
  end

  private

  def comment_rule_params
    require(:comment_rules).permit(:text).merge(rule_id: params[:rule_id])
  end
end
