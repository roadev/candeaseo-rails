class BillingTypesController < ApplicationController
  before_action :set_billing_type, only: %i[ show edit update destroy ]

  # GET /billing_types or /billing_types.json
  def index
    @billing_types = BillingType.all
  end

  # GET /billing_types/1 or /billing_types/1.json
  def show
  end

  # GET /billing_types/new
  def new
    @billing_type = BillingType.new
  end

  # GET /billing_types/1/edit
  def edit
  end

  # POST /billing_types or /billing_types.json
  def create
    @billing_type = BillingType.new(billing_type_params)

    respond_to do |format|
      if @billing_type.save
        format.html { redirect_to @billing_type, notice: "Billing type was successfully created." }
        format.json { render :show, status: :created, location: @billing_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @billing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_types/1 or /billing_types/1.json
  def update
    respond_to do |format|
      if @billing_type.update(billing_type_params)
        format.html { redirect_to @billing_type, notice: "Billing type was successfully updated." }
        format.json { render :show, status: :ok, location: @billing_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @billing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_types/1 or /billing_types/1.json
  def destroy
    @billing_type.destroy!

    respond_to do |format|
      format.html { redirect_to billing_types_path, status: :see_other, notice: "Billing type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_type
      @billing_type = BillingType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def billing_type_params
      params.expect(billing_type: [ :name ])
    end
end
