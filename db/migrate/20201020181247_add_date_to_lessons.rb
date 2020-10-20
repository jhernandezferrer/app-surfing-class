class AddDateToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :start_lesson, :timestamp
    add_column :lessons, :end_lesson, :timestamp
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
