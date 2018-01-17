class Vertical < ApplicationRecord
  has_many :categories, -> { where state: 'active' }, :dependent => :destroy
  validates_presence_of :name,:created_at
end
