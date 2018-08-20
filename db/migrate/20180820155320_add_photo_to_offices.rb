class AddPhotoToOffices < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :photo, :string
  end
end
