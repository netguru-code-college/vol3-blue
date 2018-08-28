class RefreshWeatherForCitiesService 
  def initialize
  end

  def call
    update_weather_on_cities
  end

  private

  def update_weather_on_cities
    conn = City.connection

    update_city_weather_query = current_weather_objects.map {|city_weather|
      humidity = city_weather.humidity
      temperature = city_weather.temperature
      clouds = city_weather.clouds
    
      "SELECT from cities 
        WHERE id = #{conn.quote(city_weather.id)} 
        UPDATE 
          price = #{conn.quote(price)}

      "
    }.join(';')

    conn.execute(update_city_weather_query)
  end

  def prepare_query

  end

  def current_weather_objects
    cities_ids.collect do |city_id|
      fetchWeatherService.new(city_id).call
    end
  end

  def cities_ids
    cities_ids = City.all.collect { |city| city.open_weather_api_id }
  end
end