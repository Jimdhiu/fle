class RemoveUserFromProcedureRequests < ActiveRecord::Migration[5.0]
  def change
    remove_reference :procedure_requests, :user, foreign_key: true
  end
end
