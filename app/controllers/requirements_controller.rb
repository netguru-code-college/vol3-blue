class RequirementsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @requirement = @activity.requirements.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @requirement = @activity.requirements.new(requirement_params)
    if(@requirement.save)
      flash[:success] = "Requirement added!"
      redirect_to edit_activity_path(@activity)
    else
      render 'new'
    end
  end

  def edit
  	@requirement = Requirement.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:activity_id])
    @requirement = Requirement.find(params[:id])    
    if(@requirement.update(requirement_params))
      redirect_to edit_activity_path(@activity)
    else
      render 'edit'
    end 
  end
  
  def destroy
    @activity = Activity.find(params[:activity_id])
    @requirement = Requirement.find(params[:id])
    @requirement.destroy
    redirect_to edit_activity_path(@activity)
  end
  
  private
  
  
  def requirement_params
    params.require(:requirement).permit( :activity_id, :weather_type, :operator, :value )
  end
end
