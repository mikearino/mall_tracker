class AddMallKeyToStore < ActiveRecord::Migration[5.2]
  def change
    add_reference :malls, index: true, foreign_key: true
  end
end
