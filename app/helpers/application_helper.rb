module ApplicationHelper

  def app_name 
    "Incense"
  end

  def current_year
    DateTime.now.strftime( "%Y" )
  end 
end
