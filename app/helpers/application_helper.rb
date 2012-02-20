module ApplicationHelper
  
  # Return the app logo
  def d2newyorklogo
    image_tag("d2newyorklogo.png", :class => "round")
  end
  
  # Return a title on a per-page basis
  def title
    base_title = "D2NEWYORK"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
    
  end
  
end
