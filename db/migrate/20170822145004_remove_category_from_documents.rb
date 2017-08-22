class RemoveCategoryFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :category_id, :integer
  end
end
