require 'json'
require 'faker'

cities_data = File.read(Rails.root + 'db/cities.json')
cities_data = JSON.parse(cities_data)

cities_data.each do |city|
  City.find_or_create_by!(
	  name: city["name"],
	  open_weather_api_id: city["id"].to_i,
	  temp: rand(35),
    humidity: rand(100),
    clouds: rand(100))
	print '.'
end

weather_type_array = ['temp', 'humidity', 'clouds']
operator_array = ['>', '<', '=']

5.times do |i|
  user = User.find_or_create_by!(email: "email#{i}@email.com") do |u|
 		u.password = "password#{i}"
  	u.user_name = Faker::Name.name
  	u.skip_confirmation!
	end
  20.times do
	activity = user.activities.find_or_create_by!(name: Faker::Hipster.word)
	10. times do
	  location = activity.locations.find_or_create_by!(city_id: City.all.sample.id)
		location.open_weather_city_id = Faker::Number.between(1000,99999)
	  location.save!
    requirement = activity.requirements.new
    requirement.weather_type = weather_type_array.sample
		requirement.operator = operator_array.sample
		requirement.value = rand(100)
	  requirement.save!
	  print '.'
	end
  end
end

