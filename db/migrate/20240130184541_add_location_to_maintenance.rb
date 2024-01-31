class AddLocationToMaintenance < ActiveRecord::Migration[6.1]
  def change
    add_column :maintenances, :location, :string
  end
end
