class SessionsController < ApplicationController
  def welcome
    redirect_to user_path(current_user.id) if logged_in?
  end

  def destroy
    session.delete(:user_id)
    redirect_to "/"
  end

  def new
    redirect_to user_path(current_user.id) if logged_in?
  end

  def create
    if params[:provider] == "google_oauth2"
      @user = User.create_by_google_omniauth(auth)
      session[:user_id] = @user.id
      #   byebug
      redirect_to user_path(@user)
    else

      @user = User.find_by(email: params[:user][:email])

      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        # byebug
        flash[:error] = "Sorry, login info was incorrect. Please try again."
        redirect_to login_path
      end
    end
  end

  def omniauth
    @user = User.create_by_google_omniauth(auth)

    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private

  def auth
    request.env["omniauth.auth"]
  end

end
