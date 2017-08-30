class Pro::ProcedureRequestsController < ApplicationController
  def index
    @procedure_requests = current_user.pro_procedures.all
  end

  def show
    @procedure_request = ProcedureRequest.find(params[:id])
  end

  def new
    @procedure_request = current_user.pro_procedures.new
    # @procedures = Procedure.all
  end

  def create
    @part = User.find_by_email(procedures_params[:email])
    @pro = current_user
    @procedure_request = ProcedureRequest.new(pro: @pro, part: @part, procedure_id: procedures_params[:procedure_id])
    @procedure_request.status = "pending"
    if @procedure_request.save

      redirect_to pro_procedure_requests_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def procedures_params
    params.require(:selection).permit(:email, :procedure_id)
  end

end
