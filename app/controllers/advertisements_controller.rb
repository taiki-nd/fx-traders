class AdvertisementsController < ApplicationController

  before_action :if_not_admin

  def new
    @ad = Advertisement.new
  end

  def create
    @ad = Advertisement.create(ad_params)
    redirect_to root_path
  end

  private

  def ad_params
    params.require(:advertisement).permit(:img_url, :af_link, :ad_rate_id)
  end

  def if_not_admin
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
    end
  end

end
