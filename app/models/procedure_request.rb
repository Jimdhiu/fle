class ProcedureRequest < ApplicationRecord
  # belongs_to :user
  belongs_to :procedure
  # belongs_to :pro, class_name: :User, foreign_key: :pro_id
  belongs_to :pro, class_name: "User"
  belongs_to :part, class_name: "User"
end
