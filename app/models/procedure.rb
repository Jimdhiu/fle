class Procedure < ApplicationRecord
  has_many :procedure_requests
  has_many :requested_tags
end
