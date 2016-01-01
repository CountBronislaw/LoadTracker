class CreateBullets < ActiveRecord::Migration
  def change
    create_table :bullets do |t|
      t.text :manufacturer
      t.text :style
      t.text :name
      t.text :weight
      t.text :caliber

      t.timestamps null: false
    end
  end
end
