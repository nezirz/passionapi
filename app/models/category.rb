class Category < ApplicationRecord
  belongs_to :vertical
  has_many :courses
end
