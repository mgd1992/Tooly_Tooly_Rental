class BookingsController < ApplicationController
  before_action :tool_params, only: [:new, :create]

  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tool = @tool
    if @booking.save
      redirect_to profile_path(current_user)
    else
      render :new, notice: "Booking was not successfully created, try again!"
    end
  end
end

private

def tool_params
  @tool = Tool.find(params[:tool_id])
end

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end