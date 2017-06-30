require 'rails_helper'

RSpec.describe Review do
  it { should validate_presence_of :author }
  it { should validate_length_of(:content_body).is_at_least(50).is_at_most(250) }
  it { should validate_numericality_of(:rating).only_integer.is_less_than(6).is_greater_than(0) }
  it { should belong_to :product }
  it { should validate_presence_of :product_id}
end
