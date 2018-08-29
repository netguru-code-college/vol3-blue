class RefreshWeatherForCitiesService 
  def initialize; end

  def call
    update_weather
  end

  private

  def update_weather
    conn = City.connection
    update_city_weather_query = prepare_sql_update_query(conn: conn)
    conn.execute(update_city_weather_query)
  end

  def prepare_sql_update_query(conn:)
    collect_sql_update_queries(conn: conn).join(';')
  end

  def collect_sql_update_queries(conn:)
    city_weather_objects.collect do |city_id, weather|
      temperature = weather.temperature
      humidity = weather.humidity
      clouds = weather.clouds

      sql_update_query_city(conn: conn, 
                            city_id: city_id, 
                            temp: temperature,
                            humidity: humidity,
                            clouds: clouds
                            )
    end
  end

  def sql_update_query_city(conn:, city_id:, temp:, humidity:, clouds:)
    "
      UPDATE cities 
      SET 
        temp = #{conn.quote(temp)}, 
        humidity = #{conn.quote(humidity)},
        clouds = #{conn.quote(clouds)}
      WHERE open_weather_api_id = #{conn.quote(city_id)}
    "
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