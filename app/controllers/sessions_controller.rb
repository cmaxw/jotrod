class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.get(params[:username])
    if @user && @user.password == params[:password]
      session[:current_user] = @user.username
      redirect_to root_path
    else
      flash[:error] = "Username or Password is incorrect"
      redirect_to login_url
    end
  end

  def destroy
  end

end
