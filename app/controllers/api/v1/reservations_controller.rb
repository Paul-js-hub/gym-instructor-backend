class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @user_reservations = Reservation.where(user_id:params[:user_id])

    render json: @user_reservations
  end

  # GET /reservations/1
  def show
    @reservation = Reservation.find(params:[:id])
    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = params[:user_id]

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render json: { reservation: @reservation, message: 'Reservation successfully deleted' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:city, :start_date,:service_id)
  end
end
