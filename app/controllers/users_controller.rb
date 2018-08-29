class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def set_location
    unless current_user.location
      @location = Location.find_by(params[:id])
      User.update(location: @location)
    end
    redirect_to user_path(current_user)
  end
end
