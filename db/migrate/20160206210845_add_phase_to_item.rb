class AddPhaseToItem < ActiveRecord::Migration
  def change
    add_reference :items, :phase, index: true, foreign_key: true
  end
end
