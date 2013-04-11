class AfterController < ActionController::Base
  protect_from_forgery
  
  layout "storms_app"
  
  def storms
    @title = "D2"
  end
end
