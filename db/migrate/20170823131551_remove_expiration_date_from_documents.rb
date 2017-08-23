class RemoveExpirationDateFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :expiration_date, :date
  end
end
