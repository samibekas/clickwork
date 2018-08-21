class AddColumnAvailableToDesks < ActiveRecord::Migration[5.2]
  def change
    add_column :desks, :available, :boolean, default: true
  end
end
