class ProcedureRequestsController < ApplicationController
  def index
    @procedure_requests = current_user.part_procedures.all
  end

  def show
    @procedure_request = ProcedureRequest.find(params[:id])
  end

  def update
    procedure = ProcedureRequest.find(params[:id])
    procedure.update(procedure_request_params)
    redirect_to procedure_requests_path
  end

  def destroy
    procedure = ProcedureRequest.find(params[:id])
    procedure.destroy
    redirect_to procedure_requests_path
  end


  private

  def procedure_request_params
    params.permit(:status)
  end


end
