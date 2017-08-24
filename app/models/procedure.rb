class Procedure < ApplicationRecord
  belongs_to :pro
  belongs_to :procedure_file
  belongs_to :requested_document


end
