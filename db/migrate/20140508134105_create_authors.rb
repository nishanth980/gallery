class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :unique_name
      t.timestamps
    end
  end
end
