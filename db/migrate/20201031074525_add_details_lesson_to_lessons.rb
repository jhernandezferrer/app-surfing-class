class AddDetailsLessonToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :city, :string
    add_column :lessons, :lesson_start, :time
    add_column :lessons, :lesson_end, :time
  end
end
