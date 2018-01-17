class Course < ApplicationRecord
  belongs_to :category
  def self.active
    where(:state => 'active')
  end
end
