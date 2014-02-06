class LandingPageController < ApplicationController

  def index
    @date = Date.today.to_time_in_current_zone
  end
end