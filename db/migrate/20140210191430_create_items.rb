class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :user_id
      t.string :name
      t.integer :item_status_id
      t.integer :classification_id
      t.datetime :expiration

      t.timestamps
    end
  end
end
