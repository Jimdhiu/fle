class Tag < ApplicationRecord
  has_many :documents
  has_many :requested_document
  belongs_to :category

  def complete_for?(user)
    user.documents.where(tag: self).size == number_of_uploads
  end
end
