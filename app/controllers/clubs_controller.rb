class ClubsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @club = Club.new
  end

    def create
        @club = Club.new(club_params)
        @club.user_id = session[:user_id]
        if @club.save
            redirect_to new_club_club_user_path(@club)
            # redirect_to club_path(@club)
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
    if params[:user_id] && @user = User.find_by(id: params[:user_id])
      @clubs = @user.clubs
      # @club_user = ClubUsers.find_by(club_id: @cli)
    else
      @clubs = Club.all
    end
  end

        end
    end

  private

  def club_params
    params.require(:club).permit(:name, :description, :date_founded)
  end

end
