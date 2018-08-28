require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities_data = File.read(Rails.root + 'db/cities.json')
cities_data = JSON.parse(cities_data)

cities_data.each do |city|
  name = city[:name]
  id = city[:id]

  City.create(name: name, open_weather_api_id: id)
end

