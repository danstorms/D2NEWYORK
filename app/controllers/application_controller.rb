class ApplicationController < ActionController::Base
  protect_from_forgery
  
  $customerio = Customerio::Client.new("bb5428f6c6b46f6a78e6", "487553d1ddbf9922631e")
  
end
