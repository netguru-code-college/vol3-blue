class AddGpsLongitudeToLocations < ActiveRecord::Migration[5.2]
  def change
  	add_column :locations, :gps_logitude, :string
  end
end
