class Document < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :tag

  has_attachment :photo
end
