class ProgrammingsController < ApplicationController
  before_action :set_programming, only: [:show, :edit, :update, :destroy]

  # GET /programmings
  # GET /programmings.json
  def index
    @programmings = Programming.all
  end

  # GET /programmings/1
  # GET /programmings/1.json
  def show
  end

  # GET /programmings/new
  def new
    @programming = Programming.new
  end

  # GET /programmings/1/edit
  def edit
  end

  # POST /programmings
  # POST /programmings.json
  def create
    @programming = Programming.new(programming_params)

    respond_to do |format|
      if @programming.save
        format.html { redirect_to @programming, notice: 'Programming was successfully created.' }
        format.json { render :show, status: :created, location: @programming }
      else
        format.html { render :new }
        format.json { render json: @programming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programmings/1
  # PATCH/PUT /programmings/1.json
  def update
    respond_to do |format|
      if @programming.update(programming_params)
        format.html { redirect_to @programming, notice: 'Programming was successfully updated.' }
        format.json { render :show, status: :ok, location: @programming }
      else
        format.html { render :edit }
        format.json { render json: @programming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmings/1
  # DELETE /programmings/1.json
  def destroy
    @programming.destroy
    respond_to do |format|
      format.html { redirect_to programmings_url, notice: 'Programming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming
      @programming = Programming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programming_params
      params.require(:programming).permit(:airplane_id, :track_id, :pilot_id, :date, :hour, :origin, :destination, :duration)
    end
end
