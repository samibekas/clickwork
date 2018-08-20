class AddNameToOffices < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :name, :string
  end
end
