class AddRemarksToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :remarks, :string
  end
end
