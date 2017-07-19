class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :study_guides
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
