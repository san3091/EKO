class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.integer :like
      t.string :name

      t.timestamps null: false
    end
  end
end
