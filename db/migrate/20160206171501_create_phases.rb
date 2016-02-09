class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
