class Vertical < ApplicationRecord
  has_many :categories, -> { where state: 'active' }
end
