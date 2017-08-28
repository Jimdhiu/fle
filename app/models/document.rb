class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  validates :photos, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true

  has_attachments :photos, maximum: 50#, maximum: tag.number_of_uploads


  def expired?
    (self.document_date + self.tag.validity) < Date.today
  end

end
