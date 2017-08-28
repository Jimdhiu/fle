class Tag < ApplicationRecord
  has_many :documents
  belongs_to :category



  def complete_for?(user)
    user.documents.where(tag: self).size == number_of_uploads
  end

  def expired_for?(user)
    status = []
    user.documents.where(tag: self).each do |document|
      status << document.expired?
    end
    return status.include? true
  end
end
