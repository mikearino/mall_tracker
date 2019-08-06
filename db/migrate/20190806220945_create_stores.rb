class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :floor
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end
