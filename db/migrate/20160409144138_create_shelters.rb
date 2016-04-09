class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end
