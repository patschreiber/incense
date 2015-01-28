class AddUniqueItemIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :unique_item_id, :string, :after => :user_id
  end
end
