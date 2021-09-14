class CommentRulesController < ApplicationController

  def create
    @comment_rule = CommentRule.create(comment_rule_params)
    redirect_to "/rules/#{@comment_rule.rule.id}"
  end

  def destroy
    @rule = Rule.find(params[:rule_id])
    comment = @rule.comment_rules.find(params[:id])
    comment.destroy 
    redirect_to "/rules/#{comment.rule.id}"
  end

  private

  def comment_rule_params
    params.require(:comment_rule).permit(:text).merge(rule_id: params[:rule_id])
  end
end
