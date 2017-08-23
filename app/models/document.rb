class Document < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  validates :photo, presence: true
  validates :document_date, presence: true
  validates :tag, presence: true

  has_attachment :photo

  def expiration_date
    @expiration_date = @document_date + expiration[self.tag.name]
  end
end
