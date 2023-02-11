require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Validations for the Like model' do
    let(:like) { build(:like) }

    it 'requires the presence of author_id' do
      like.author_id = nil
      expect(like).to be_invalid
    end

    it 'requires the presence of post_id' do
      like.post_id = nil
      expect(like).to be_invalid
    end
    it 'has a valid factory' do
      expect(like).to be_valid
    end
  end
end
