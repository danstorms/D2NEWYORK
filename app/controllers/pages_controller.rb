class PagesController < ApplicationController
  def rsvp
    @title = "RSVP"
    
    @email = Email.new
  end
  
  def show
    @email = Email.find(params[:id])
  end

  def schedule
    @title = "Schedule"
  end

  def info
    @title = "Info"
  end

  def registry
    @title = "Registry"
  end

  def fun
    @title = "Fun"
  end

end
