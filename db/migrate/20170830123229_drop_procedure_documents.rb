class DropProcedureDocuments < ActiveRecord::Migration[5.0]
  def up
    drop_table :procedure_documents
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
