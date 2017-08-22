class Category < ApplicationRecord
  has_many :documents
  has_many :tags
end
