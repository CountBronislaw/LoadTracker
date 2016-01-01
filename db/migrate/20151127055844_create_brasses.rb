class CreateBrasses < ActiveRecord::Migration
  def change
    create_table :brasses do |t|
      t.text :manufacturer
      t.text :caliber

      t.timestamps null: false
    end
  end
end
