class TrucksController < ApplicationController
  def create
    truck=Truck.create!(truck_params)
    render json: truck,status: :created
  end



  def index
    qualified_trucks = Truck.all.select { |truck| truck_qualifies_for_allowance?(truck) }
    render json: qualified_trucks
  end

  def show
    truck = Truck.find_by(id: params[:id]);
    if truck
        render json: truck, status: :created
    else
        render json: { error: "Not authorized" }, status: :unauthorized
    end
end

def calculate_allowance_details(truck)
  days_since_departure = (Date.today - truck.departureDate).to_i
  allowance_qualifying_days = truck.allowanceQualifyingDays

  if days_since_departure >= allowance_qualifying_days
    days_to_be_paid = days_since_departure - allowance_qualifying_days + 1
    unpaid_days = [0, days_to_be_paid - truck.paidDelayDays].max
    paid_days = [0, [truck.paidDelayDays, days_to_be_paid].min].max
    excess_days_paid = [0, truck.paidDelayDays - days_to_be_paid].max

    {
      truckNumber: truck.truckNumber,
      driverName: truck.driverName,
      daysSinceDeparture: days_since_departure,
      daysToBePaid: days_to_be_paid,
      paidDelayDays: paid_days,
      unpaidAllowanceDays: unpaid_days,
      excessDaysPaid: excess_days_paid
    }
  else
    {
      message: "Driver does not qualify for allowance yet."
    }
  end
end
  
  def delay_entry
    if @truck.update(truck_params)
      render json: calculate_allowance_details(@truck)
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
  end
  
  private

  def truck_qualifies_for_allowance?(truck)
    days_since_departure = (Date.today - truck.departure_date).to_i
    allowance_qualifying_days = truck.allowance_qualifying_days
    days_since_departure >= allowance_qualifying_days
  end
  
  def truck_params
    params.require(:truck).permit(:paidDelayDays, :truckNumber, :driverName, :departureDate, :allowanceQualifyingDays, :paidDelayDays,)
  end
  end
  

 