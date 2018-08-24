require 'open_weather'

class GetWeather
    def initialize 
        api_key = ENV['OPEN-WEATHER-API-KEY']
        options = { units: "metric", APPID: api_key }
        p OpenWeather::Current.city("Berlin, DE", options)
    end
end
