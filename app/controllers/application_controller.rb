class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :authorize_user

  private

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect_to login_path if !logged_in?
  end
  def redirect_if_not_authorized
    redirect_if_not_logged_in
    if !authorize_user(params[:id])
      flash[:error] = "Permission denied. You can only edit your own page."
      redirect_to "/"
    end
  end

  def authorize_user(id)
    # true
    current_user.id == id.to_i
    # byebug
  end



end
