class Category < ApplicationRecord
  has_many :tags

  def complete_for?(user)
    # bool = true
    # tags.each { |tag| bool = bool && tag.complete_for?(user) }
    # bool

    tags.reduce(true) { |bool, tag| bool = bool && tag.complete_for?(user) }
  end

  def progression(user) # number of tags upload in the category
    progress = 0
    tags.each do |tag|
      if tag.complete_for?(user)
        progress += 1
      end
    end
    "#{progress} sur #{tags.size}"
  end

end
