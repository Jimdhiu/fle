class Procedure < ApplicationRecord
  belongs_to :user
  has_many :procedure_file
  has_many :requested_document


end
