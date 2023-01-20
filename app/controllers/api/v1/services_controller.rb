class Api::V1::ServicesController < ApplicationController
  before_action :set_service, only: %i[show update destroy]
  skip_before_action :authenticate_request, only: %i[index]
  # GET /services
  def index
    @services = Service.all

    render json: @services.to_json
  end

  # GET /services/1
  def show
    render json: @service.to_json
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def service_params
    params.require(:service).permit(:title, :duration, :class_time, :fee, :image)
  end
end
