class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :documents, dependent: :destroy
  # has_many :procedure_requests
  # has_many :pro_procedures, foreign_key: :pro_id, source: :procedure_requests

  has_many :pro_procedure, foreign_key: :pro_id, class_name: "ProcedureRequest"
  has_many :part_procedure, foreign_key: :user_id, class_name: "ProcedureRequest"
end
