class ChangeColumnNameInCompletedTrucks < ActiveRecord::Migration[6.1]
  def change
    rename_column :completed_trucks, :completed_time, :time
  end
end
