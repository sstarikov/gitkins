class SessionsController < ApplicationController
  def create_from_github
    omniauth = request.env["omniauth.auth"]
    user = User.find_by_github_uid(omniauth["uid"]) || User.create_from_omniauth(omniauth)

    session[:user_id] = user.id

    redirect_to root_path, :notice => "Welcome, #{user.name}"
  end

  def destroy
    @current_user = session[:user_id] = nil
    redirect_to root_path
  end
end
