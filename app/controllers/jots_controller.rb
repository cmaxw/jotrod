class JotsController < ApplicationController
  before_filter :only => :create

  def show
    
  end

  def create
    @jot = Jot.new(params[:jot])

    if @jot.save
      # render :text => "success"
      redirect_to '/home'
    else
      render :text => "failure"
    end
  end
end
