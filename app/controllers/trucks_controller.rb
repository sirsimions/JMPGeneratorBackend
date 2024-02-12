class TrucksController < ApplicationController
  def create
    truck=Truck.create!(truck_params)
    render json: truck,status: :created
  end

  def calculate_allowance_details(truck)
    days_since_departure = (Date.today - truck.departure_date).to_i
    allowance_qualifying_days = truck.allowance_qualifying_days
  
    if days_since_departure >= allowance_qualifying_days
      days_to_be_paid = days_since_departure - allowance_qualifying_days + 1
      unpaid_days = truck.unpaid_allowance_days
      paid_days = [truck.paidDelayDays, days_to_be_paid].min
      excess_days_paid = [0, days_to_be_paid - unpaid_days].max
      {
        truckNumber: truck.truck_number,
        driverName: truck.driver_name,
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
  
  def truck_params
    params.require(:truck).permit(:paidDelayDays, :truckNumber, :driverName, :departureDate, :allowanceQualifyingDays, :paidDelayDays,)
  end
  end
  

 