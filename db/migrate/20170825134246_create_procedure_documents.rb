class CreateProcedureDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :procedure_documents do |t|
      t.references :procedure_request, foreign_key: true
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
