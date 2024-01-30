class AddColumnsToCompletedTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :completed_trucks, :spare, :string
    add_column :completed_trucks, :status, :string
    add_column :completed_trucks, :completed_at, :datetime
  end
end
