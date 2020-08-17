class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :question_id
      t.integer :consultant_id

      t.timestamps
    end
  end
end
