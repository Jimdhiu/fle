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

  def download_zip
    documents =[]
    #récupérer les documents requis de la procedure en cours
    self.procedure_tags.each do |tag|
      self.part.documents.where(tag: tag).each do |document|
        documents << document
      end
    end
    byebug
    #Attachment name
    filename = 'documents.zip'
    temp_file = Tempfile.new(filename)

    begin
      #This is the tricky part
      #Initialize the temp file as a zip file
      Zip::OutputStream.open(temp_file) { |zos| }

      #Add files to the zip file as usual
      Zip::File.open(temp_file.path, Zip::File::CREATE) do |zip|
        #Put files in here
      end

      #Read the binary data from the file
      zip_data = File.read(temp_file.path)

      #Send the data to the browser as an attachment
      #We do not send the file directly because it will
      #get deleted before rails actually starts sending it
      send_data(zip_data, :type => 'application/zip', :filename => filename)
    ensure
      #Close and delete the temp file
      temp_file.close
      temp_file.unlink
    end
  end



  private

  def procedures_params
    params.require(:selection).permit(:email, :procedure_id)
  end

end
