class Comment < ActiveRecord::Base
  attr_accessible :comment_text, :image_id
end
