require 'rails_helper'

# Test suite for the Category model
RSpec.describe Category, type: :model do
  # Association test
  # ensure an category record belongs to a vertical
  it { should belong_to(:vertical) }
  it { should have_many(:courses).dependent(:destroy) }
  # Validation test
  # ensure column name is present and vertical_id before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:vertical_id) }

end