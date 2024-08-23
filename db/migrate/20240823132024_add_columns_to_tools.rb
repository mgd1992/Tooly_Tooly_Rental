class AddColumnsToTools < ActiveRecord::Migration[7.1]
  def change
    add_column :tools, :address, :string
    add_column :tools, :longitude, :float
    add_column :tools, :latitude, :float
  end
end
