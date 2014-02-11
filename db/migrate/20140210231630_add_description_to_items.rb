class AddDescriptionToItems < ActiveRecord::Migration
  def up
    add_column :items, :description, :string, :after => :name
  end

  def down
    remove_column :items, :description
  end
end
