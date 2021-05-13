class AddsLatitudeAndLongitudeColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :latitude, :float
    add_column :properties, :longitude, :float
  end
end
