class RemoveKeyFromMalls < ActiveRecord::Migration[5.2]
  def change
    drop_table :malls
  end
end
