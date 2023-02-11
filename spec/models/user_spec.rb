require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(name: 'GAbz', posts_counter: 4) }

  before { subject.save }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_numericality_of(:posts_counter).is_greater_than_or_equal_to(0) }
end
