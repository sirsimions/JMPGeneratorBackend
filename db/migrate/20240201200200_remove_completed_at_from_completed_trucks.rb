class RemoveCompletedAtFromCompletedTrucks < ActiveRecord::Migration[6.1]
  def change
    remove_column :completed_trucks, :completed_at, :datetime
  end
end
