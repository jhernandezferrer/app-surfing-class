class AddPriceToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :price, :float
  end
end
