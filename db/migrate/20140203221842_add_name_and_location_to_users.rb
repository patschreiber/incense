class AddNameAndLocationToUsers < ActiveRecord::Migration
  def up 
    add_column :users, :name, :string, :after => :email
    add_column :users, :location, :string, :after => :name
  end

  def down
    remove_column :users, :location
    remove_column :users, :name
  end 
end
