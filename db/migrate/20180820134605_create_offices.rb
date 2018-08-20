class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :country
      t.integer :capacity_max

      t.timestamps
    end
  end
end
