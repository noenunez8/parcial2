class MedicalCenterOfficialsController < ApplicationController
  before_action :set_medical_center_official, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /medical_center_officials or /medical_center_officials.json
  def index
    @medical_center_officials = MedicalCenterOfficial.all
  end

  # GET /medical_center_officials/1 or /medical_center_officials/1.json
  def show
  end

  # GET /medical_center_officials/new
  def new
    @medical_center_official = MedicalCenterOfficial.new
  end

  # GET /medical_center_officials/1/edit
  def edit
  end

  # POST /medical_center_officials or /medical_center_officials.json
  def create
    @medical_center_official = MedicalCenterOfficial.new(medical_center_official_params)

    respond_to do |format|
      if @medical_center_official.save
        format.html { redirect_to @medical_center_official, notice: "Medical center official was successfully created." }
        format.json { render :show, status: :created, location: @medical_center_official }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_center_official.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_center_officials/1 or /medical_center_officials/1.json
  def update
    respond_to do |format|
      if @medical_center_official.update(medical_center_official_params)
        format.html { redirect_to @medical_center_official, notice: "Medical center official was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_center_official }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_center_official.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_center_officials/1 or /medical_center_officials/1.json
  def destroy
    @medical_center_official.destroy
    respond_to do |format|
      format.html { redirect_to medical_center_officials_url, notice: "Medical center official was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_center_official
      @medical_center_official = MedicalCenterOfficial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_center_official_params
      params.require(:medical_center_official).permit(:name, :description, :address, :phone_number, :medical_center_type_id)
    end
end
