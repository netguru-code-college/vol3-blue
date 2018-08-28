class WeatherObject
  attr_reader :temp, :humidity, :clouds
  
	def initialize(temp:, humidity:, clouds:)
    @temp = temp
    @humidity = humidity
    @clouds = clouds
	end
end