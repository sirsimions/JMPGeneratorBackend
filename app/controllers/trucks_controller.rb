class TrucksController < ApplicationController
  def create
    truck=Truck.create!(truck_params)
    render json: truck,status: :created
  end



  def index
    trucks = Truck.all
    render json: trucks
  end

  def show
    truck = Truck.find_by(id: params[:id]);
    if truck
        render json: truck, status: :created
    else
        render json: { error: "Not authorized" }, status: :unauthorized
    end
end

def delay_entry
  truck = Truck.find_by(truckNumber: params[:id])
  if truck
    if truck.update(truckpay_params)
      render json: truck, status: :ok
    else
      render json: { error: "Failed to update truck's delay days" }, status: :unprocessable_entity
    end
  else
    render json: { error: "Truck not found" }, status: :not_found
  end
end
  private

  def truck_params
    params.require(:truck).permit(:paidDelayDays, :truckNumber, :driverName, :departureDate, :allowanceQualifyingDays, :paidDelayDays,)
  end

  def truckpay_params
    params.require(:truck).permit(:paidDelayDays)
  end
  end
  

 