class CreateBrasses < ActiveRecord::Migration
  def change
    create_table :brasses do |t|

      t.timestamps null: false
    end
  end
end
