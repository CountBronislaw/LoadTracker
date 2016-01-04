class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.text :manufacturer
      t.text :model
      t.int :round_count

      t.timestamps null: false
    end
  end
end
