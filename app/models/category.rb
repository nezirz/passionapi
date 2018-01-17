class Category < ApplicationRecord
  belongs_to :vertical
  has_many :courses, -> { where state: 'active' }, :dependent => :destroy

  validates_presence_of :name,:vertical_id, :created_at

  def self.active
    where(:state => 'active')
  end
end
