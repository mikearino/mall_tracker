class WhoopsMakeNewMallsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :malls do |t|
      t.string :name
      t.boolean :has_food_court
      t.boolean :dangerous
      t.timestamps
    end
  end
end
