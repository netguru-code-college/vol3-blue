class RemoveFieldsFromLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :humidity
    remove_column :locations, :temperature
    remove_column :locations, :clouds
    remove_column :locations, :gps_latitude
    remove_column :locations, :gps_longitude
    remove_column :locations, :name
  end
end
