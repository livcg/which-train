class TripOptionsController < ApplicationController
  before_action :set_trip_option, only: [:show, :edit, :update, :destroy]

  # GET /trip_options
  # GET /trip_options.json
  def index
    @trip_options = TripOption.all
  end

  # GET /trip_options/1
  # GET /trip_options/1.json
  def show
  end

  # GET /trip_options/new
  def new
    @trip_option = TripOption.new
  end

  # GET /trip_options/1/edit
  def edit
  end

  # POST /trip_options
  # POST /trip_options.json
  def create
    @trip_option = TripOption.new(trip_option_params)

    respond_to do |format|
      if @trip_option.save
        format.html { redirect_to @trip_option, notice: 'Trip option was successfully created.' }
        format.json { render :show, status: :created, location: @trip_option }
      else
        format.html { render :new }
        format.json { render json: @trip_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_options/1
  # PATCH/PUT /trip_options/1.json
  def update
    respond_to do |format|
      if @trip_option.update(trip_option_params)
        format.html { redirect_to @trip_option, notice: 'Trip option was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_option }
      else
        format.html { render :edit }
        format.json { render json: @trip_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_options/1
  # DELETE /trip_options/1.json
  def destroy
    @trip_option.destroy
    respond_to do |format|
      format.html { redirect_to trip_options_url, notice: 'Trip option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_option
      @trip_option = TripOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_option_params
      params.require(:trip_option).permit(:leave_house_by, :train_leaves_at, :station_id)
    end
end
