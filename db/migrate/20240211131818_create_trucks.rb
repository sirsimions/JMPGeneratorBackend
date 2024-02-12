class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :truckNumber
      t.string :driverName
      t.date :departureDate
      t.integer :allowanceQualifyingDays
      t.integer :paidDelayDays

      t.timestamps
    end
  end
end
