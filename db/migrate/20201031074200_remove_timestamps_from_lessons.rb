class RemoveTimestampsFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :start_lesson, :timestamps
    remove_column :lessons, :end_lesson, :timestamp
  end
end
