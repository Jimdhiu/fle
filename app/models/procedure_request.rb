class ProcedureRequest < ApplicationRecord
  # belongs_to :user
  belongs_to :procedure
  has_many :requested_tags, through: :procedure
  has_many :tags, through: :requested_tags

  # belongs_to :pro, class_name: :User, foreign_key: :pro_id
  belongs_to :pro, class_name: "User"
  belongs_to :part, class_name: "User"
  has_many :procedure_documents
  has_many :documents, through: :procedure_documents

  def valid_for?(user)
    # bool = true
    # tags.each { |tag| bool = bool && tag.complete_for?(user) }
    # bool

    complete = tags.reduce(true) { |bool, tag| bool = bool && tag.complete_for?(user) }

    status = []
    self.tags.each do |tag|
      status << tag.expired_for?(user)
    end
    expired = status.include? true

    return complete && !expired
  end

  def progression(user) # number of tags upload in the category
    progress = 0
    tags.each do |tag|
      if tag.complete_for?(user)
        progress += 1
      end
    end
    "#{progress} / #{tags.size}"
  end
end
