require 'rails_helper'

# Test suite for the Vertical model
RSpec.describe Vertical, type: :model do
  # Association test
  # ensure Vertical model has a 1:m relationship with the Item model
  it { should have_many(:categories).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:created_at) }
end