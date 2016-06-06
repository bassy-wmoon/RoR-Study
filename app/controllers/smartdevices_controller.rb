class SmartdevicesController < ApplicationController
  before_action :set_smartdevice, only: [:show, :edit, :update, :destroy]

  # GET /smartdevices
  # GET /smartdevices.json
  def index
    @smartdevices = Smartdevice.all
  end

  # GET /smartdevices/1
  # GET /smartdevices/1.json
  def show
  end

  # GET /smartdevices/new
  def new
    @smartdevice = Smartdevice.new
  end

  # GET /smartdevices/1/edit
  def edit
  end

  # POST /smartdevices
  # POST /smartdevices.json
  def create
    @smartdevice = Smartdevice.new(smartdevice_params)

    respond_to do |format|
      if @smartdevice.save
        format.html { redirect_to @smartdevice, notice: 'Smartdevice was successfully created.' }
        format.json { render :show, status: :created, location: @smartdevice }
      else
        format.html { render :new }
        format.json { render json: @smartdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartdevices/1
  # PATCH/PUT /smartdevices/1.json
  def update
    respond_to do |format|
      if @smartdevice.update(smartdevice_params)
        format.html { redirect_to @smartdevice, notice: 'Smartdevice was successfully updated.' }
        format.json { render :show, status: :ok, location: @smartdevice }
      else
        format.html { render :edit }
        format.json { render json: @smartdevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartdevices/1
  # DELETE /smartdevices/1.json
  def destroy
    @smartdevice.destroy
    respond_to do |format|
      format.html { redirect_to smartdevices_url, notice: 'Smartdevice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartdevice
      @smartdevice = Smartdevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smartdevice_params
      params.require(:smartdevice).permit(:device_kind, :device_model, :buy_date, :ammount)
    end
end
