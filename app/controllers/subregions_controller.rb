class SubregionsController < ApplicationController
  before_action :set_subregion, only: %i[ show edit update destroy ]

  # GET /subregions or /subregions.json
  def index
    @subregions = Subregion.all
  end

  # GET /subregions/1 or /subregions/1.json
  def show
  end

  # GET /subregions/new
  def new
    @subregion = Subregion.new
  end

  # GET /subregions/1/edit
  def edit
  end

  # POST /subregions or /subregions.json
  def create
    @subregion = Subregion.new(subregion_params)

    respond_to do |format|
      if @subregion.save
        format.html { redirect_to @subregion, notice: "Subregion was successfully created." }
        format.json { render :show, status: :created, location: @subregion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subregions/1 or /subregions/1.json
  def update
    respond_to do |format|
      if @subregion.update(subregion_params)
        format.html { redirect_to @subregion, notice: "Subregion was successfully updated." }
        format.json { render :show, status: :ok, location: @subregion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subregions/1 or /subregions/1.json
  def destroy
    @subregion.destroy!

    respond_to do |format|
      format.html { redirect_to subregions_path, status: :see_other, notice: "Subregion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subregion
      @subregion = Subregion.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def subregion_params
      params.expect(subregion: [ :name, :country_id, :translations, :flag, :wiki_data_id, :active ])
    end
end
