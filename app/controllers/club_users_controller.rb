class ClubUsersController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @club = Club.find_by_id(params[:club_id]) #user_id: params[:user_id]
    @club_user = @club.club_users.build #user_id: params[:user_id]
  end

  def create
    @club_user = current_user.club_users.build(club_user_params)

    if @club_user.club.user_id != current_user.id
      if @club_user.save
        @club_user.admin = false
        redirect_to club_path(@club_user.club_id)
      else
        render :new
      end
    else
      @club_user.admin = true
      @club_user.reason = "Club Founder"
      if @club_user.save
        redirect_to club_path(@club_user.club_id)
      else
        render :new
      end
    end
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

  def update
    @club_user = ClubUser.find_by(user_id: params[:user_id], club_id: params[:id])
    @club_user.admin = params[:club_user][:admin]
    @club_user.save #(validate: false)
    # byebug
    redirect_to edit_club_path(@club_user.club.id)
    # edit_club_path(@club.id)
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
