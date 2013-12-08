class User < ActiveRecord::Base

  attr_accessible :name

  def posts
    Post.where(:user_id => id)
  end

end