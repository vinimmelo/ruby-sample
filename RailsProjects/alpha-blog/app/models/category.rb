class Category < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, minimum: 3, maximum: 25
  validates_uniqueness_of :name
end
