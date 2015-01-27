class InventoryController < ApplicationController

  def add
    @user = User.find(current_user) 
    @name = params[:item][:name]
    @classification = params[:item][:classification]
    @formatted_expiration = Date.parse(params[:item]["expiration(3i)"] + '-'  + params[:item]["expiration(2i)"] + '-'  + params[:item]["expiration(1i)"] )
    Rails.logger.debug @formatted_expiration.month
    Rails.logger.debug @formatted_expiration
    @item_status = 1

    if @name.nil?
      # TODO Add Error Here
    else
      @item = Item.new
      @item.user_id = @user.id
      @item.name = @name
      @item.item_status_id = @item_status
      @item.expiration = @formatted_expiration
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




