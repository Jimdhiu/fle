class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :procedure_file

  # validates :photo, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true

  has_attachment :photo


  def expiration_date?
    (self.document_date + self.tag.validity) < Date.today
  end
end
