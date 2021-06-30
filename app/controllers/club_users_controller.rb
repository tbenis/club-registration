class ClubUsersController < ApplicationController
    def new
        @club_user = ClubUser.new(user_id: params[:user_id])
    end
end