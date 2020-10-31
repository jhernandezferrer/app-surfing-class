class AddAddressToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :address, :string
    add_column :lessons, :latitude, :float
    add_column :lessons, :longitude, :float
  end
end
