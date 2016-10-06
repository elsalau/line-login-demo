class CreateUsersData < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :access_token
      t.string :username
      t.string :image_url
      t.string :status_msg
      t.timestamps null: false
    end

    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end
