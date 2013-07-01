module SessionsHelper
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def user_token
        @user_token = session[:user_token]
    end
end
