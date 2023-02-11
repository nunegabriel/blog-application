require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.new(name: 'gabz', photo: 'https://randomuser.me/api/portraits/men/23.jpg', bio: 'a perfect person', posts_counter: 0) }
  let(:post) { Post.create(title: 'Tide', text: 'Text', comments_counter: 0, likes_counter: 0, author: user) }
  let!(:comment1) { Comment.create(text: 'This is a comment', author: user, post: post) }
  let!(:comment2) { Comment.create(text: 'No comment', author: user, post: post) }

  it 'should update comments counter' do
    expect(post.update_comments_counter).to eq true
    expect(post.comments_counter).to eq 2
  end
end
