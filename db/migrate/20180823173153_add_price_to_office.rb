class AddPriceToOffice < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :price, :integer
  end
end
