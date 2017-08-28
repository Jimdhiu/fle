class Category < ApplicationRecord
  has_many :tags

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
