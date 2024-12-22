class TownshipsController < ApplicationController
  before_action :set_township, only: %i[ show edit update destroy ]

  # GET /townships or /townships.json
  def index
    @townships = Township.all
  end

  # GET /townships/1 or /townships/1.json
  def show
  end

  # GET /townships/new
  def new
    @township = Township.new
  end

  # GET /townships/1/edit
  def edit
  end

  # POST /townships or /townships.json
  def create
    @township = Township.new(township_params)

    respond_to do |format|
      if @township.save
        format.html { redirect_to @township, notice: "Township was successfully created." }
        format.json { render :show, status: :created, location: @township }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @township.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /townships/1 or /townships/1.json
  def update
    respond_to do |format|
      if @township.update(township_params)
        format.html { redirect_to @township, notice: "Township was successfully updated." }
        format.json { render :show, status: :ok, location: @township }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @township.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /townships/1 or /townships/1.json
  def destroy
    @township.destroy!

    respond_to do |format|
      format.html { redirect_to townships_path, status: :see_other, notice: "Township was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_township
    @township = Township.find(params[:id]) # Use params[:id] directly
  end

  # Only allow a list of trusted parameters through.
  def township_params
    params.require(:township).permit(:name, :description, :city_id, :active)
  end

end
