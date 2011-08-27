class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.get(session[:current_user]) if session[:current_user]
  end

  def logged_in
    unless current_user
      session[:login_location] = request.request_uri
      flash[:error] = "You must be logged in to see that page."
      redirect_to login_path
    end
  end
end
