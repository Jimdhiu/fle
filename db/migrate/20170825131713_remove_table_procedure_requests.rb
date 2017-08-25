class RemoveTableProcedureRequests < ActiveRecord::Migration[5.0]
  def change
    drop_table :procedure_requests
  end
end
