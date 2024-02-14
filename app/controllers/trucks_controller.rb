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
  private

  def truck_params
    params.require(:truck).permit(:paidDelayDays, :truckNumber, :driverName, :departureDate, :allowanceQualifyingDays, :paidDelayDays,)
  end
  end
  

 