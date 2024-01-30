class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :role
      t.string :password_digest

      t.timestamps
    end
  end
end
