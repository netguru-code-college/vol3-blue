class CreateWeatherObjectService
  def initialize(params)
    params = JSON.parse(params)
    
    @temperature = params.dig("main", "temp")
    @humidity = params.dig("main", "humidity")
    @clouds = params.dig("clouds", "all")
  end

  def call
    ::WeatherObject.new(
      temperature: temperature, 
      humidity: humidity, 
      clouds: clouds
    )
  end

  private

  attr_reader :temperature, :humidity, :clouds
end