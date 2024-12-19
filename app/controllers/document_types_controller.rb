class DocumentTypesController < ApplicationController
  before_action :set_document_type, only: %i[show edit update destroy]

  # GET /document_types or /document_types.json
  def index
    @document_types = DocumentType.all
  end

  # GET /document_types/1 or /document_types/1.json
  def show
  end

  # GET /document_types/new
  def new
    @document_type = DocumentType.new
  end

  # GET /document_types/1/edit
  def edit
  end

  # POST /document_types or /document_types.json
  def create
    @document_type = DocumentType.new(document_type_params)

    if @document_type.save
      redirect_to document_types_path, notice: 'El tipo de documento fue creado con éxito.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /document_types/1 or /document_types/1.json
  def update
    if @document_type.update(document_type_params)
      redirect_to document_types_path, notice: "El tipo de documento fue actualizado con éxito."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /document_types/1 or /document_types/1.json
  def destroy
    if @document_type.destroy
      redirect_to document_types_path, status: :see_other, notice: "El tipo de documento fue eliminado con éxito."
    else
      redirect_to document_types_path, alert: "No se pudo eliminar el tipo de documento."
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_document_type
    @document_type = DocumentType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def document_type_params
    params.require(:document_type).permit(:name, :short_name, :display_order, :active)
  end
end
