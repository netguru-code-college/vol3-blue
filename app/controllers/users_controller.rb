class UsersController < ApplicationController
    def index
    end
    
    def show
      @user = User.find(params[:id])
    end

    def set_location

    end
end