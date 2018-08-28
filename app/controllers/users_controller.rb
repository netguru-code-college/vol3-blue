class UsersController < ApplicationController
    def index
    end
    
    def show
      @user = User.find(params[:id])
    end

    def set_location
      if !current_user.location
        @location = Location.find_by(params[:id])
        User.update(location: @location)
      end
      redirect_to user_path(current_user)
    end
end