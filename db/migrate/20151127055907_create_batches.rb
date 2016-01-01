class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.belongs_to :load
      t.belongs_to :press
      
      t.integer :quantity
      t.text :comments

      t.timestamps null: false
    end
  end
end
