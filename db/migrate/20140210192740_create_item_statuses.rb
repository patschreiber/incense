class CreateItemStatuses < ActiveRecord::Migration
  def change
    create_table :item_statuses do |t|
      t.string :name
    end
  end
end
