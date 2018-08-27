class ChangeColumnNameGps < ActiveRecord::Migration[5.2]
  def change
  	rename_column :locations, :gps_logitude, :gps_longitude
  end
end
