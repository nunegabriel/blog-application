require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'validations' do
    let(:like) { Like.new(author_id: 1, post_id: 6) }

    it 'requires author_id to be present' do
      like.author_id = nil
      expect(like).to_not be_valid
    end

    it 'requires post_id to be present' do
      like.post_id = nil
      expect(like).to_not be_valid
    end
  end
end
