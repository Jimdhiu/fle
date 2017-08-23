class AddCategoryToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :category, foreign_key: true
  end
end
