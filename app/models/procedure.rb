class Procedure < ApplicationRecord
  belongs_to :user
  has_many :procedure_files
  has_many :requested_documents


end
