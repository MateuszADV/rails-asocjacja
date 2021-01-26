class DoktorsController < ApplicationController
  before_action :set_doktor, only: %i[ show edit update destroy ]

  # GET /doktors or /doktors.json
  def index
    @doktors = Doktor.all
  end

  # GET /doktors/1 or /doktors/1.json
  def show
  end

  # GET /doktors/new
  def new
    @doktor = Doktor.new
  end

  # GET /doktors/1/edit
  def edit
  end

  # POST /doktors or /doktors.json
  def create
    @doktor = Doktor.new(doktor_params)

    respond_to do |format|
      if @doktor.save
        format.html { redirect_to @doktor, notice: "Doktor was successfully created." }
        format.json { render :show, status: :created, location: @doktor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doktors/1 or /doktors/1.json
  def update
    respond_to do |format|
      if @doktor.update(doktor_params)
        format.html { redirect_to @doktor, notice: "Doktor was successfully updated." }
        format.json { render :show, status: :ok, location: @doktor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doktors/1 or /doktors/1.json
  def destroy
    @doktor.destroy
    respond_to do |format|
      format.html { redirect_to doktors_url, notice: "Doktor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doktor
      @doktor = Doktor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doktor_params
      params.require(:doktor).permit(:name, :last_name, :description, :user_id)
    end
end
