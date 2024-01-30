class CreateCompletedTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :completed_trucks do |t|
      t.string :registration_number
      t.datetime :completed_time

      t.timestamps
    end
  end
end
