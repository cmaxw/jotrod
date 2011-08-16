class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    render "new"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
