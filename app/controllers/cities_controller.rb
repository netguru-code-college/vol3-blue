# Controller for City model
class CitiesController < ApplicationController
  def index
    @cities = CityDecorator.decorate_collection(City.all)

    render :index
  end
end
