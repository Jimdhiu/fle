class Tag < ApplicationRecord
  has_many :documents
  has_many :categories
end
