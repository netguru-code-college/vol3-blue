class AddCityIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :city_id, :integer
  end
end
