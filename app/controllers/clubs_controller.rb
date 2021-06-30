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

    def show
        @club = Club.find_by_id(params[:id])
        redirect_to '/clubs/new' if !@club
    end

    def index
        @clubs =  Club.all
    end

    private

    def club_params
        params.require(:club).permit(:name, :description, :date_founded)
    end
end
