class CreateDesks < ActiveRecord::Migration[5.2]
  def change
    create_table :desks do |t|
      t.references :office, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
