class StaticPagesController < ApplicationController
  def top
    @records = Record.limit(4).order("created_at DESC")
    @rules = Rule.limit(4).order("created_at DESC")
    @ad_2 = Advertisement.where(ad_rate_id: 2).order("RAND()").first
    @ad_5 = Advertisement.where(ad_rate_id: 5).order("RAND()").first
  end

  def privacy_policy
  end

  def disclaimer
  end

end
