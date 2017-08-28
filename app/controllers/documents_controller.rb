class DocumentsController < ApplicationController

  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.where(user: current_user)
    @categories = Category.all
    @selected = "Database"
  end

  def new
    @document = Document.new(tag_id: params.dig(:document, :tag_id))
    @tags = Tag.all
    @selected = "Upload"
  end

  def create
    @document = current_user.documents.build(document_params)
    if @document.valid?
      @document.save
      flash[:notice] = "Votre document a bien été ajouté à votre librairie"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @tags = Tag.all
  end

  def update
     if @document.update(document_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy

    @document.destroy
    redirect_to root_path
  end

  private

  def document_params
    params.require(:document).permit(:tag_id, :document_date, photos: [])
  end

  def set_document
    @document = Document.find(params[:id])
  end

end


