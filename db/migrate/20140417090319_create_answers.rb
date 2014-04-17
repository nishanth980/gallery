class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :answers1 
      t.integer :answers2    
      t.integer :answers3    
      t.integer :answers4
      t.integer :answers5
      t.integer :answers6
      t.integer :answers7
      t.integer :answers8      
      t.integer :question_id
      t.timestamps
    end
  end
end
