class UsersController < ApplicationController
  def new
    redirect_to user_path(current_user.id) if logged_in?
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    redirect_if_not_logged_in
    @user = User.find_by_id(params[:id])
    @club_users = ClubUser.where(user_id: @user.id)
    # byebug
    redirect_to "/" if !@user
  end

  def index
    redirect_if_not_logged_in
    @user = User.all
    # redirect_to '/' if !@user
  end

  def edit
    redirect_if_not_authorized
    @user = User.find_by_id(params[:id])
  end

  def update
    redirect_if_not_authorized
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, session[:user_id], :avatar)
  end


end
