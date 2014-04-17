class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :answer5
      t.string :answer6
      t.string :answer7
      t.string :answer8
      t.integer :question_id
      t.timestamps
    end
  end
end
