class Pro::ProcedureRequestsController < ApplicationController
  def index
    @procedure_requests = current_user.pro_procedures
  end

  def show
    @procedure_request = ProcedureRequest.find(params[:id])
  end

  def new
    @procedure_request = current_user.pro_procedures.new
  end

  def create
   @procedure_request = current_user.pro_procedures.new(current_user.pro_procedures_params)
   @current_user.pro_procedures.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pro_procedures_params
    params.require(:pro_procedures).permit(:tag_id, :document_date, photos: [])
  end

end
