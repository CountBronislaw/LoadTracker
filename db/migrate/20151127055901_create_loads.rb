class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.belongs_to :bullet
      t.belongs_to :powder
      t.belongs_to :primer
      t.belongs_to :brass

      t.text :powder_charge
      t.text :coal
      t.text :name

      t.timestamps null: false
    end
  end
end
