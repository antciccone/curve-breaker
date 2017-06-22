class DroptableTogethers < ActiveRecord::Migration[5.0]
  def up
   drop_table :togethers
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
