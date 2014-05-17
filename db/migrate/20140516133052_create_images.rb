class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :title
      t.string :content
      t.integer :user_id
      t.timestamps
    end
  end
end
