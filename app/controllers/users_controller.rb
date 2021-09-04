class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @records = user.records
    @rules = user.rules
  end

end
