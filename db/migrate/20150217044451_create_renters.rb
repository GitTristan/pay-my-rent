class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|

      t.string :name
      t.integer :unit
      t.datetime :lease_start
      t.datetime :lease_end
      
      t.timestamps null: false
    end
  end
end
