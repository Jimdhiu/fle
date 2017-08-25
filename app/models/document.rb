class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  has_many :procedure_files

  # validates :photo, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true

  has_attachment :photo


  def expiration_date?
    (self.document_date + self.tag.validity) < Date.today
  end
end
