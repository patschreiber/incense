class InventoryController < ApplicationController

  def add
    @user = User.find(current_user) 
    @name = params[:item][:name]
    @classification = params[:item][:classification]
    @formatted_expiration = Date.parse(params[:item]["expiration(3i)"] + '-'  + params[:item]["expiration(2i)"] + '-'  + params[:item]["expiration(1i)"] )
    @item_status = 1

    if @name.nil?
      data['error_msg'] = "Please provide a name for the item you'd like to add."
      render :json => data
    else
      @item = Item.new
      @item.user_id = @user.id
      @item.name = @name
      @item.item_status_id = @item_status
      @item.expiration = @formatted_expiration
      @item.save!

      Rails.logger.debug @item.unique_item_id

      respond_to do |format|
        format.html { render :partial => "inventory_item", :layout => false, :locals => { :unique_id => @item.unique_item_id, :name => @name, :expiration => @formatted_expiration} }
      end
    end
  end

  def delete
  end

  def update
  end

end




