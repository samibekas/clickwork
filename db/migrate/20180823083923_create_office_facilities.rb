class CreateOfficeFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :office_facilities do |t|
      t.references :office, foreign_key: true
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end
