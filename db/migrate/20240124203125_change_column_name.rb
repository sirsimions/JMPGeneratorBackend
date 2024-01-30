class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :completed_trucks, :registration_number, :regnumber
  end
end
