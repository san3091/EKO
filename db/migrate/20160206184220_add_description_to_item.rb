class AddDescriptionToItem < ActiveRecord::Migration
  def change
    add_column :items, :decription, :text
  end
end
