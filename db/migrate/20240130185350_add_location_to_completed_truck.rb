class AddLocationToCompletedTruck < ActiveRecord::Migration[6.1]
  def change
    add_column :completed_trucks, :location, :string
  end
end
