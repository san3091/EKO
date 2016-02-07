class AddLikeToItem < ActiveRecord::Migration
  def change
    add_column :items, :like, :integer
  end
end
