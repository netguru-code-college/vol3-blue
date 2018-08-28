class AddCityAndWeatherToLocationModel < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :open_weather_city_id, :integer
    add_column :locations, :temperature, :decimal
    add_column :locations, :humidity, :integer
    add_column :locations, :clouds, :integer
  end
end
