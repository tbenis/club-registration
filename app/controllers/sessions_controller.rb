class SessionsController < ApplicationController
    def welcome
    end

    def  destroy
        session.delete(:user_id)
        redirect_to '/'
    end

end
