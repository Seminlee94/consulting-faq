class CreateQuestionAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :question_answers do |t|
      t.integer :answer_id
      t.integer :question_id

      t.timestamps
    end
  end
end
