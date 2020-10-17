class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
