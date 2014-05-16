class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :email
      t.string :mobile_number, :limit=> 15
      t.integer :user_id
      t.string :password
      t.string :password_confirmation
      t.integer :role_id
      t.timestamps
    end
  end
end
