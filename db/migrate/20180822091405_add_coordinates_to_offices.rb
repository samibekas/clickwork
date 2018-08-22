class AddCoordinatesToOffices < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :latitude, :float
    add_column :offices, :longitude, :float
  end
end
