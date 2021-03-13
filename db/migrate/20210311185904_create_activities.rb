class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.timestamps
      t.integer :student_id
      t.integer :lesson_id
    end
  end
end
