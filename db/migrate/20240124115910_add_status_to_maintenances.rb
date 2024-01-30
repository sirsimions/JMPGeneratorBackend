class AddStatusToMaintenances < ActiveRecord::Migration[6.1]
  def change
    add_column :maintenances, :status, :string, default: 'Under Maintenance'
  end
end
