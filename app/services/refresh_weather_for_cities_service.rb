class RefreshWeatherForCitiesService 
  def initialize
  end

  def call
    update_weather_on_cities
  end

  private

  def update_weather_on_cities
    cities = City.all

    city_weather_objects.each do |city_id, weather|
      temperature = weather.temperature
      humidity = weather.humidity
      clouds = weather.clouds
    
      City.find_by(open_weather_api_id: city_id).update(temp: temperature, clouds: clouds, humidity: humidity)
    end
  end

  def prepare_query
  end

  def city_weather_objects
    Hash[
      cities_ids.collect { |city_id| 
        [city_id, city_weather(city_id)]
      }
    ]
  end

  def city_weather(city_id)
    FetchWeatherService.new(city_id: city_id).call
  end

  def cities_ids
    cities_ids = City.all.collect { |city| city.open_weather_api_id }
  end
end