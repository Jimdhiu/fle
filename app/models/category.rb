class Category < ApplicationRecord
  has_many :tags

  def complete_for?(user)
    # bool = true
    # tags.each { |tag| bool = bool && tag.complete_for?(user) }
    # bool

    tags.reduce(true) { |bool, tag| bool = bool && tag.complete_for?(user) }
  end
end
