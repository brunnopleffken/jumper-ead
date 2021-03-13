class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :weekday, null: false
      t.string :hour, null: false
    end
  end
end
