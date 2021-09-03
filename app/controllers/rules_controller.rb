class RulesController < ApplicationController

  before_action :authenticate_user!

  def new
    @rule = Rule.new
  end

end
