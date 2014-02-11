class LandingPageController < ApplicationController

  def index
    @date = Date.today.to_time_in_current_zone
    @item = Item.new
    @classifications = Classification.all
  end


end