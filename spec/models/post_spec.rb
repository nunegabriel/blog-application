require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { described_class.new(title: 'deadline day', comments_counter: 4, likes_counter: 10) }

  before { subject.save }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_most(250) }
  it { is_expected.to validate_numericality_of(:comments_counter).is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_numericality_of(:likes_counter).is_greater_than_or_equal_to(0) }
end
