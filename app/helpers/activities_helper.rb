module ActivitiesHelper
  def edit_action?
    controller.action_name == 'edit'
  end 
end
