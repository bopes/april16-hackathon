class DropAllTables < ActiveRecord::Migration
  def change
    drop_table(:hospitals)
    drop_table(:shelters)
    drop_table(:foods)
  end
end
