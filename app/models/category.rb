class Category < ApplicationRecord
  belongs_to :vertical
  has_many :courses, -> { where state: 'active' }
  def self.active
    where(:state => 'active')
  end
end
