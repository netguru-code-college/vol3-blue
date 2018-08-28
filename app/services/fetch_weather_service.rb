# Fetch Weather Service
class FetchWeatherService
	attr_accessor :city_id, :cache_key

	API_KEY = ENV['OPEN-WEATHER-API']
	CACHE_PARENT = 'weather_city'

	def initialize(city_id:)
		@city_id = city_id.to_s
		@cache_key = cache_key.join
	end
	
	def call
		raw_response = make_request
		#raw_response

		create_weather_object(raw_response)
	end

	private

	def create_weather_object(weather_response)
		CreateWeatherObjectService.new(weather_response).call
	end

	def make_request
		Rails.cache.fetch(cache_key, expires_in: 10.minutes) do
			RestClient.get(endopoint).body
		end
	end

	def endopoint
		"http://api.openweathermap.org/data/2.5/weather?id=#{city_id}&appid=#{API_KEY}"
	end

	def cache_key
		[CACHE_PARENT, '/', city_id.to_s]
	end
end
