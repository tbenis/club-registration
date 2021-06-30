class ClubsController < ApplicationController
    def new
        @club  = Club.new
    end

    def create
        @club = Club.new(club_params)
        @club.user_id = session[:user_id]
        if @club.save
            redirect_to club_path(@club)
        else
            flash[:error] = @club.errors.full_messages
            render :new
        end
    end


    def index
        @clubs =  Club.all
    end

end
