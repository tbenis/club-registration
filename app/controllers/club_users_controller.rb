class ClubUsersController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @club = Club.find_by_id(params[:club_id]) #user_id: params[:user_id]
    @club_user = @club.club_users.build #user_id: params[:user_id]
  end


