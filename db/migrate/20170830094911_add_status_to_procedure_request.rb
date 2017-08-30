class AddStatusToProcedureRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :procedure_requests, :status, :integer
  end
end
