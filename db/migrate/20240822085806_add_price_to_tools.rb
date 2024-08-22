class AddPriceToTools < ActiveRecord::Migration[7.1]
  def change
    add_column :tools, :price, :float
  end
end
