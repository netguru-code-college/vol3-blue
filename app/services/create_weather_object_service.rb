class CreateWeatherObjectService
  def initialize(params)
    params = JSON.parse(params)
    
    @temp = params.dig("main", "temp")
    @humidity = params.dig("main", "humidity")
    @clouds = params.dig("clouds", "all")
  end

  def call
    ::WeatherObject.new(
      temp: temp, 
      humidity: humidity, 
      clouds: clouds
    )
  end

  private

  attr_reader :temp, :humidity, :clouds
end