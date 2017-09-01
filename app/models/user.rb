class User < ApplicationRecord

  # enum role: { 0 => "pro", 1 => "part" }
  # enum role: ["pro", "part"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :documents, dependent: :destroy
  # has_many :procedure_requests
  # has_many :pro_procedures, foreign_key: :pro_id, source: :procedure_requests

  has_many :pro_procedures, foreign_key: :pro_id, class_name: "ProcedureRequest"
  has_many :part_procedures, foreign_key: :part_id, class_name: "ProcedureRequest"


  def has_new_procedure_request?
    part_procedures.pending.any?
    # new_procedure = false
    # part_procedures.each do |pp|
    #   if pp.pending?
    #     new_procedure = true
    #     break
    #   end
    # end
    # new_procedure
  end

  def part?
    self.status != "pro"
  end

end
