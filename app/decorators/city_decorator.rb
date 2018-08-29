class CityDecorator < Draper::Decorator
    delegate_all

    # def check_humidity
    #     return '--' if open_weather_api_id.blank?
    #     FetchWeatherService.new(city_id: open_weather_api_id).call&.humidity
    # end

    # def check_temp
    #     return '--' if open_weather_api_id.blank?
    #     FetchWeatherService.new(city_id: open_weather_api_id).call&.temp
    # end
  end