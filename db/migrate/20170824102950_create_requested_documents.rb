class CreateRequestedDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :requested_documents do |t|

      t.timestamps
    end
  end
end
