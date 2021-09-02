class SessionsController < ApplicationController
    
    def new
        @errors = []
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            flash[:message] = "Welcome back, #{@user.username}!"
            redirect_to user_path(@user)
        elsif @user
            @errors = ["Invalid password. Please try again."]
            render :new
        else
            @errors = ["Invalid username. Please try again."]
            render :new
        end
    end

    def destroy
       session.clear
       flash[:message] = "You have successfully logged out!"
       redirect_to login_path
    end

    def omniauth
        @user = User.create_from_omniauth(auth)
        if @user.valid?
            session[:user_id] = @user.id
            flash[:message] = "You have successfully logged in!"
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end

    private
    def auth
        request.env['omniauth.auth']
    end
    
end