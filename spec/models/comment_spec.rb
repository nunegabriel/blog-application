require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validations' do
    let(:comment) { Comment.new(text: 'ggg', post_id: 6) }

    it 'requires text to be present' do
      comment.text = nil
      expect(comment).to_not be_valid
    end

    it 'requires post_id to be present' do
      comment.post_id = nil
      expect(comment).to_not be_valid
    end
  end
end
