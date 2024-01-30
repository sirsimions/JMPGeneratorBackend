class CreateAuths < ActiveRecord::Migration[6.1]
  def change
    create_table :auths do |t|
      t.string :user_name
      t.string :role
      t.string :password_digest

      t.timestamps
    end
  end
end
