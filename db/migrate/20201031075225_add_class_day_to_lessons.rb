class AddClassDayToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :class_day, :date
  end
end
