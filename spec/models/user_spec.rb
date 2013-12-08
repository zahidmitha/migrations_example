require 'spec_helper'

describe User do

  let(:user) { User.create}
  let(:post1) {Post.create({:user_id => user.id}) }
  let(:post2){Post.create({:user_id => user.id}) }

  it 'gets the posts for a user' do
    user.posts.should eq [post1, post2]


  end

end