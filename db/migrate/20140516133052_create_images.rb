class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :title
      t.string :content

      t.timestamps
    end
  end
end
