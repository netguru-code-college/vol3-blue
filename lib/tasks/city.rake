namespace :city do
  desc "Update weather on all cities in City model"
  task update_weather: :environment do
    ::RefreshWeatherForCitiesService.new.call
  end
end