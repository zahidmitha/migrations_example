require 'spec_helper'

describe Post do

  let(:post) { Post.create }
  let(:tag1) { Tag.create }
  let(:tag2) { Tag.create }
  before do
    # pt = PostsTag.new
    # pt.post_id = post.id
    # pt.tag_id = tag.id
    # pt.save
  end

  it 'gets the tags for a post' do
    PostsTag.create(:post_id => post.id, :tag_id => tag1.id)
    PostsTag.create(:post_id => post.id, :tag_id => tag2.id)
    post.tags.should eq [tag1, tag2]


  end



end
