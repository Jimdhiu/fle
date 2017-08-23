class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  validates :photo, presence: true
  validates :document_date, presence: true
  validates :tag_id, presence: true

  has_attachment :photo
end
