class AddLimitLessonToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :student_limit, :integer
  end
end
