class Category < ApplicationRecord
  belongs_to :generic_category
  has_many :sub_categories
end
