class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :start_at, :dates
    remove_column :bookings, :end_at
  end
end
