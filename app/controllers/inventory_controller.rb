class InventoryController < ApplicationController

  def add
    @user = User.find(current_user)
    @name = params[:item][:name]
    @expiration_month = params[:item]["expiration(2i)"]
    @expiration_day = params[:item]["expiration(3i)"]
    @expiration_year = params[:item]["expiration(1i)"]
    @classification = params[:item][:classification]
    @formatted_expiration = DateUtil.humanize_date( @expiration_month, @expiration_day, @expiration_year )
    @item_status = 1

    if @name.nil? #|| (@formatted_expiration < DateTime.now.to_date)
      # TODO Add Error Here
    else
      @item = Item.new
      @item.user_id = @user.id
      @item.name = @name
      @item.item_status_id = @item_status
      @item.expiration = DateUtil.format_for_database( @expiration_month, @expiration_day, @expiration_year )
      @item.save!

      respond_to do |format|
        format.html { render :partial => "inventory_item", :layout => false, :locals => { :name => @name, :expiration => @formatted_expiration, :classification => @classification } }
      end
    end
  end

  def delete
  end

  def update
  end

end




