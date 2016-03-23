class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :ip_address
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
