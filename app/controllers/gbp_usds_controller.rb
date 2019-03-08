class GbpUsdsController < ApplicationController
  before_action :set_gbp_usd, only: [:show, :edit, :update, :destroy]

  # GET /gbp_usds
  # GET /gbp_usds.json
  def index
    @gbp_usds = GbpUsd.all
  end

  # GET /gbp_usds/1
  # GET /gbp_usds/1.json
  def show
  end

  # GET /gbp_usds/new
  def new
    @gbp_usd = GbpUsd.new
  end

  # GET /gbp_usds/1/edit
  def edit
  end

  # POST /gbp_usds
  # POST /gbp_usds.json
  def create
    @gbp_usd = GbpUsd.new(gbp_usd_params)

    respond_to do |format|
      if @gbp_usd.save
        format.html { redirect_to @gbp_usd, notice: 'Gbp usd was successfully created.' }
        format.json { render :show, status: :created, location: @gbp_usd }
      else
        format.html { render :new }
        format.json { render json: @gbp_usd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gbp_usds/1
  # PATCH/PUT /gbp_usds/1.json
  def update
    respond_to do |format|
      if @gbp_usd.update(gbp_usd_params)
        format.html { redirect_to @gbp_usd, notice: 'Gbp usd was successfully updated.' }
        format.json { render :show, status: :ok, location: @gbp_usd }
      else
        format.html { render :edit }
        format.json { render json: @gbp_usd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gbp_usds/1
  # DELETE /gbp_usds/1.json
  def destroy
    @gbp_usd.destroy
    respond_to do |format|
      format.html { redirect_to gbp_usds_url, notice: 'Gbp usd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gbp_usd
      @gbp_usd = GbpUsd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gbp_usd_params
      params.require(:gbp_usd).permit(:date, :spot_exchange_rate)
    end
end
