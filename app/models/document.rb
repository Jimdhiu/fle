class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  validates :photos, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true
  delegate :validity, to: :tag, allow_nil: true

  has_attachments :photos, maximum: 12#, maximum: tag.number_of_uploads


  def limit_date
    self.document_date + self.tag.validity
  end


  def expired?
    self.limit_date < Date.today
  end

  def self.valid_date(tag)
    self.where(tag: tag)
        .where("document_date > ?", (Date.today - tag.validity))
  end

  def self.unvalid_date(tag)
    self.where(tag: tag)
        .where("document_date < ?", (Date.today - tag.validity))
  end

end
