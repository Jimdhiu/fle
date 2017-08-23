class AddValidityAndNumberOfUploadsToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :validity, :integer, default: 0, null: false
    add_column :tags, :number_of_uploads, :integer, default: 0, null: false
  end
end
