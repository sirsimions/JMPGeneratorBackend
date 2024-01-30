class AddCompletedDateToCompletedTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :completed_trucks, :date, :date
  end
end
