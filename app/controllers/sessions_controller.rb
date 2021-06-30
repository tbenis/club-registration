class SessionsController < ApplicationController
    def welcome
    end

    def  destroy
        session.delete(:user_id)
        redirect_to '/'
    end

    def new
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
