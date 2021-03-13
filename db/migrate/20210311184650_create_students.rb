class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.integer :classroom_id, null: false
      t.boolean :is_enabled, null: false, default: true
      t.date :first_class_at, null: false
    end
  end
end
