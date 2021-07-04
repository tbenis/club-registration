class ClubUsersController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @club = Club.find_by_id(params[:club_id]) #user_id: params[:user_id]
    @club_user = @club.club_users.build #user_id: params[:user_id]
  end


  def index
    @club_users = ClubUser.all
  end

  def show
    @club_user = ClubUser.find_by(params[:id])
  end

  def edit
    @club_users = ClubUser.where(club_id: params[:id])
  end


  def destroy
    @club_user = ClubUser.find_by(user_id: params[:user_id])
    @club_user.destroy
    redirect_to club_path(params[:id])
  end

  private

  def club_user_params
    params.require(:club_user).permit(:club_id, :admin, :reason)
  end
end
