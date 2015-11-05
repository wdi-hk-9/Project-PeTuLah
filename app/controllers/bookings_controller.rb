class BookingsController < ApplicationController
  before_action :authenticate, only: [:show, :index, :new, :create, :edit]

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @booking.tour_id = params[:tour_id]

    if @booking.save
      flash[:success] = "Booking success!"
      UserMailer.booking_confirmation(@booking).deliver_now
      redirect_to booking_path(@booking.id)
    else
      flash[:danger] = "Booking failed!"
      redirect_to new_tour_booking_path(params[:tour_id])
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:success] = "Booking is edited! Revised details sent to your e-mail."
      UserMailer.booking_confirmation(@booking).deliver_now
      redirect_to booking_path(@booking.id)
    else
      flash[:danger] = "Changes to booking cannot be saved!"
      render booking_path(@booking.id)
    end
  end

private
  def booking_params
    params.require(:booking).permit( :start_date, :start_time, :party_of, :remarks)
  end
end
