module ActivitiesHelper
  def check_if_weather_meets_requirements(activity:, location:)
    CheckWeatherForActivityService.new(activity: activity, location: location).call
  end
  def edit_action?
    controller.action_name == 'edit'
  end 
end
