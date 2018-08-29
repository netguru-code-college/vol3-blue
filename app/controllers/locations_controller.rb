class LocationsController < ApplicationController
  def index
    @locations = LocationDecorator.decorate_collection(Location.all)
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @location = @activity.locations.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @location = @activity.locations.new(location_params)
    @location.user = current_user
    if(@location.save)
      flash[:success] = "Location added!"
      redirect_to edit_activity_path(@activity)
    else
      render 'new'
    end
  end

  def edit
  	@location = Location.find(params[:id])
  end

  def show
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if(@location.update(location_params))
      redirect_to @location
    else
      render 'edit'
    end 
  end
  
  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end
  
  private def location_params
    params.require(:location).permit(:user_id, :city_id, :activity_id)
  end
end