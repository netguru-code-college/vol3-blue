module ActivitiesHelper
  def check_if_weather_meets_requirements(activity:, location:)
    CheckWeatherForActivityService.new(activity: activity, location: location).call
  end
end
