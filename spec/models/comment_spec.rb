require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validations for the Comment model' do
    let(:comment) { build(:comment) }

    it 'requires the presence of text' do
      comment.text = nil
      expect(comment).to be_invalid
    end

    it 'requires the presence of post_id' do
      comment.post_id = nil
      expect(comment).to be_invalid
    end
  end
end
