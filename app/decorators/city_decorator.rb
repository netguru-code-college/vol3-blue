class CityDecorator < Draper::Decorator
  decorates_finders

  delegate :name, :temp, :humidity, :clouds
end
