class UpdateHospitalTable < ActiveRecord::Migration
  def change
    add_column(:hospitals, :latitude, :float)
    add_column(:hospitals, :longitude, :float)
    remove_column(:hospitals, :coordinates)
  end
end
