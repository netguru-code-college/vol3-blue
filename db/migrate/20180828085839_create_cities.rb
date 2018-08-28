class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :open_weather_api_id
      t.decimal :temp
      t.integer :humidity
      t.integer :clouds

      t.timestamps
    end
  end
end
