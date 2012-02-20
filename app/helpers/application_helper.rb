module ApplicationHelper
  
  # Return the app logo
  def d2newyorklogo
    image_tag("d2newyorklogo.png", :class => "round")
  end
  
  # Return a title on a per-page basis
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
    
  end
  
end
