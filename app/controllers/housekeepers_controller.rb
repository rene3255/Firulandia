class HousekeepersController < ApplicationController
  before_action :set_housekeeper, only: %i[ show edit update destroy ]

  # GET /housekeepers or /housekeepers.json
  def index
    @housekeepers = Housekeeper.all
  end

  # GET /housekeepers/1 or /housekeepers/1.json
  def show
  end

  # GET /housekeepers/new
  def new
    @housekeeper = Housekeeper.new
  end

  # GET /housekeepers/1/edit
  def edit
  end

  # POST /housekeepers or /housekeepers.json
  def create
    @housekeeper = Housekeeper.new(housekeeper_params)

    respond_to do |format|
      if @housekeeper.save
        format.html { redirect_to housekeeper_url(@housekeeper), notice: "Housekeeper was successfully created." }
        format.json { render :show, status: :created, location: @housekeeper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @housekeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housekeepers/1 or /housekeepers/1.json
  def update
    respond_to do |format|
      if @housekeeper.update(housekeeper_params)
        format.html { redirect_to housekeeper_url(@housekeeper), notice: "Housekeeper was successfully updated." }
        format.json { render :show, status: :ok, location: @housekeeper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @housekeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housekeepers/1 or /housekeepers/1.json
  def destroy
    @housekeeper.destroy

    respond_to do |format|
      format.html { redirect_to housekeepers_url, notice: "Housekeeper was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housekeeper
      @housekeeper = Housekeeper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def housekeeper_params
      params.require(:housekeeper).permit(:full_name, :address, :description, :conditions, :price, :user_id)
    end
     
    
end
