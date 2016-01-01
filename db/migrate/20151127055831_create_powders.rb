class CreatePowders < ActiveRecord::Migration
  def change
    create_table :powders do |t|
      t.text :manufacturer
      t.text :name
      
      t.timestamps null: false
    end
  end
end
