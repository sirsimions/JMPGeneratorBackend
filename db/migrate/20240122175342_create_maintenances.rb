class CreateMaintenances < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenances do |t|
      t.string :regnumber
      t.date :date
      t.datetime :time
      t.string :spare

      t.timestamps
    end
  end
end
