class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def locations

    end
end
