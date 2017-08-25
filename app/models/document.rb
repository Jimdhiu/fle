class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  has_many :procedure_files

  # validates :photo, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true

  has_attachments :photos, maximum: 12


  def expiration_date?
    (self.document_date + self.tag.validity) < Date.today
  end
end
