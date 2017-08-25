class ProcedureDocument < ApplicationRecord
  belongs_to :procedure_request
  belongs_to :document
end
