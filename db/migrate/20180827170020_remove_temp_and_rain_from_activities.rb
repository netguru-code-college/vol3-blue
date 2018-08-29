class RemoveTempAndRainFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :temp_max, :integer
    remove_column :activities, :temp_min, :integer
    remove_column :activities, :rain, :boolean
  end
end
