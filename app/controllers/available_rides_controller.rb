class AvailableRidesController < ApplicationController
  def index
    @available_rides = Ride.pending
  end

  def create
    @ride = Ride.pending.find(params[:ride_id])
    @ride.update(driver_id: current_driver.id, status: :in_progress)
    redirect_to root_path, notice: "You have accepted the ride successfully!"
  end
end
