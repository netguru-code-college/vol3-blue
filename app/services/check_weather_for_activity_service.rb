class CheckWeatherForActivityService
  # init with location and activity
  def initialize(location:, activity:)
    @activity = activity
    @location = location
    @city = @location.city

    @weather = Hash[
      temp: @city.temp.to_i,
      clouds: @city.clouds.to_i,
      humidity: @city.humidity.to_i
    ]

    @conditions = @activity.requirements.collect do |requirement|
      Hash[
          type: requirement.weather_type.to_sym,
          operator: requirement.operator,
          value: requirement.value.to_i
      ]
    end
  end

  def call
    check_weather_meets_requirements
  end

  private
  attr_accessor :conditions, :weather, :requirements

  def check_weather_meets_requirements
    @conditions.each do |condition|
      type = condition[:type]
      operator = condition[:operator]
      value = condition[:value]

      case operator
      when '>'
        return false unless @weather[type] > value
      when '='
        return false unless @weather[type] == value
      when '<'
        return false unless @weather[type] < value
      end
    end

    true
  end
end
