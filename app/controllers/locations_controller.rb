class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def new
    @location = current_user.locations.new
  end

  def create
    @location = current_user.locations.new(location_params)
    if(@location.save)
      flash[:success] = "Location added!"
      redirect_to @location
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