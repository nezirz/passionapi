require 'rails_helper'

# Test suite for the Course model
RSpec.describe Course, type: :model do
  # Association test
  it { should belong_to(:category) }
  # Validation tests
  # ensure columns name and category,author are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category_id) }
  it { should validate_presence_of(:author) }
end