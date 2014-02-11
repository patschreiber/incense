class LandingPageController < ApplicationController

  def index
    @date = Date.today.in_time_zone
    @item = Item.new
    @classifications = Classification.all
    @inventory_items = User.find(current_user).items
  end


end