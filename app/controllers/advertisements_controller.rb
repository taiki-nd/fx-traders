class AdvertisementsController < ApplicationController

  def new
    @ad = Advertisement.new
  end

  def create
    @ad = Advertisement.create(ad_params)
    redirect_to root_path
  end

  private

  def ad_params
    params.require(:advertisement).permit(:img_url, :af_link)
  end
end
