class LandingPageController < ApplicationController

  def index
    @date = Date.today.in_time_zone
    @item = Item.new
    @classifications = Classification.all
    if user_signed_in?
      @inventory_items = User.find(current_user).items
    end
  end


end