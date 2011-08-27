class UsersController < ApplicationController
  before_filter :logged_in, :only => [:home, :edit, :update]

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

  def home

  end
end
