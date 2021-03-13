class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title, null: false
      t.string :video_path
      t.string :activity_path
    end
  end
end
