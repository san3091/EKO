class AddPhaseToSource < ActiveRecord::Migration
  def change
    add_reference :sources, :phase, index: true, foreign_key: true
  end
end
