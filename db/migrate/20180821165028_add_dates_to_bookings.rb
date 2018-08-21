class AddDatesToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_at, :date
    add_column :bookings, :end_at, :date
  end
end
