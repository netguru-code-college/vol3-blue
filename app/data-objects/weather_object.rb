class WeatherObject
  attr_reader :temperature, :humidity, :clouds
  
	def initialize(temperature:, humidity:, clouds:)
    @temperature = temperature
    @humidity = humidity
    @clouds = clouds
	end
end