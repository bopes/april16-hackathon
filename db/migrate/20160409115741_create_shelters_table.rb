class CreateSheltersTable < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :coordinates
    end
  end
end
