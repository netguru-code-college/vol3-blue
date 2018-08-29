require 'json'
require 'faker'

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

weather_type_array = ['temp', 'humidity', 'clouds']
operator_array = ['>', '<', '=']

10.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = Faker::Internet.password
  user.user_name = Faker::Name.name
  user.skip_confirmation!
  user.save!
  10.times do
	  location = user.locations.new
	  location.open_weather_city_id = Faker::Number.between(1000,99999)
	  location.save
	  activity = user.activities.new
	  activity.name = Faker::Job.field
	  activity.save
	  10.times do
	  	requirement = activity.requirements.new
	  	requirement.weather_type = weather_type_array[rand(weather_type_array.length)]
	  	requirement.operator = operator_array[rand(operator_array.length)]
	  	requirement.value = Faker::Number.between(0,9)
	  	requirement.save
	  end
	end
end

