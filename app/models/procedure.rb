class Procedure < ApplicationRecord
  has_many :procedure_requests
  has_many :requested_tags
  has_many :tags, through: :requested_tags
end
