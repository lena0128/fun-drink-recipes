class ApplicationController < ActionController::Base
    helper_method :current_user

    def require_login
        ((flash[:message] = "You must log in first!") && (redirect_to login_path)) if !current_user
    end
    
    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

end
