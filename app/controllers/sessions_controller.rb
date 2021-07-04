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
        @user = User.find_by(email: params[:user][:email])
        puts "$$$$$$$$$$$$ #{params[:user][:password]}"
       

        if @user.try(:authenticate, params[:user][:password])
            puts "%%%%%%%%%%%%%%%%%%%%"
            # byebug
            session[:user_id]  = @user.id
            redirect_to user_path(@user)
        else 
            flash[:error] = "Email or password is incorrect"
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
