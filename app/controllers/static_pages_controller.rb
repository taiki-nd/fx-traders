class StaticPagesController < ApplicationController
  def top
    @records = Record.limit(4).order("created_at DESC")
    @rules = Rule.limit(4).order("created_at DESC")
  end

  def about
  end
end
