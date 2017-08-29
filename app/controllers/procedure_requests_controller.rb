class ProcedureRequestsController < ApplicationController
  def index
    @procedure_requests = current_user.part_procedures
  end

  def show
    @procedure_request = ProcedureRequest.find(params[:id])
  end

  def destroy
    
  end

  private


end
