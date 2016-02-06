class AddItemToSource < ActiveRecord::Migration
  def change
    add_reference :sources, :item, index: true, foreign_key: true
  end
end
