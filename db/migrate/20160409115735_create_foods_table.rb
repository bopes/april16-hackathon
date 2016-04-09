class CreateFoodsTable < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :address
      t.string :coordinates
    end
  end
end
