class PagesController < ApplicationController
  def main
    @title = "Main"
    
    @email = Email.new
  end
  
  def show
    @email = Email.find(params[:id])
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
