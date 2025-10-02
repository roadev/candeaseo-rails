class RegionsController < ApplicationController
  before_action :set_region, only: %i[ show edit update destroy ]

  # GET /regions or /regions.json
  def index
    @regions = Region.all
  end

  # GET /regions/1 or /regions/1.json
  def show
  end

  # GET /regions/new
  def new
    @region = Region.new
  end

  # GET /regions/1/edit
  def edit
  end

  # POST /regions or /regions.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: "Region was successfully created." }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regions/1 or /regions/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: "Region was successfully updated." }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regions/1 or /regions/1.json
  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path, notice: "La región fue eliminada con éxito."
  end


  private

  def set_region
    @region = Region.find(params[:id]) # Correct usage
  end

  def region_params
    params.require(:region).permit(:name, :description, :translations, :flag, :active)
  end
end
