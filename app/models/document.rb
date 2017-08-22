class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  has_attachment :photo
end
