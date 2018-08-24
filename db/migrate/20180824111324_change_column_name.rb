class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :locations, :gps, :gps_latitude
  end
end
