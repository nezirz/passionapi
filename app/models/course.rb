class Course < ApplicationRecord
  belongs_to :category
  validates_presence_of :name,:category_id,:author, :created_at

  def self.active
    where(:state => 'active')
  end
end
