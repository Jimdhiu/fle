class Tag < ApplicationRecord
  has_many :documents
  belongs_to :category

end
