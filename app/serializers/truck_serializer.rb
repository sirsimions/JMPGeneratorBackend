class TruckSerializer < ActiveModel::Serializer
  attributes :id, :truckNumber, :driverName, :departureDate, :allowanceQualifyingDays, :paidDelayDays
end
