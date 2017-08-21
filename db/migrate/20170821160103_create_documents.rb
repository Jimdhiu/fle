class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.date :document_date
      t.boolean :verified
      t.date :expiration_date
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
