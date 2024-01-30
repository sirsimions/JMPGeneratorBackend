class CreateTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :templates do |t|
      t.date :date
      t.text :start_location
      t.text :stop_location
      t.text :start_time
      t.text :stop_time
      t.text :event

      t.timestamps
    end
  end
end
