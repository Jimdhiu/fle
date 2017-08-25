class CreateProcedureRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :procedure_requests do |t|
      t.references :part
      t.references :pro
      t.references :procedure
    end
  end
end
