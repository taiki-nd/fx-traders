class CommentRulesController < ApplicationController

  def create
    @rule = Rule.find(params[:rule_id])
    @comment_rules = @rule.comment_rules.build(comment_rule_params)
    if @comment_rules.save
      render :index
    end
  end

  def destroy
    @rule = Rule.find(params[:rule_id])
    @comment = @rule.comment_rules.find(params[:id])
    @comment.destroy
    render :destroy
  end

  private

  def comment_rule_params
    params.require(:comment_rule).permit(:text).merge(rule_id: params[:rule_id])
  end
end
