class AddProjectToPhase < ActiveRecord::Migration
  def change
    add_reference :phases, :project, index: true, foreign_key: true
  end
end
