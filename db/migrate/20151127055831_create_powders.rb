class CreatePowders < ActiveRecord::Migration
  def change
    create_table :powders do |t|

      t.timestamps null: false
    end
  end
end
