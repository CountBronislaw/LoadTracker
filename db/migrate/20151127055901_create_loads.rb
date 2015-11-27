class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|

      t.timestamps null: false
    end
  end
end
