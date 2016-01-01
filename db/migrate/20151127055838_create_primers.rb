class CreatePrimers < ActiveRecord::Migration
  def change
    create_table :primers do |t|
      t.text :manufacturer
      t.text :size

      t.timestamps null: false
    end
  end
end
