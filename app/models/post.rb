class Post < ActiveRecord::Base
  attr_accessible :title, :body, :user_id

  def tags
    @poststags = PostsTag.where(:post_id => id)
    # here, the symbol key is from the database and the id is from the model
    # here, we're getting the poststag post_id using the post.id
    @tag_ids =[]


    # we then use that to get the poststag tag_id and THEN the tag.id from Tag
    @poststags.each do
      |poststag|
      @tag_ids << poststag.tag_id
    end
    Tag.where(:id => @tag_ids)
  end
end
