class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :gravatar_url
      t.timestamps null: false
    end

    add_index :users, :password_digest
  end
end
