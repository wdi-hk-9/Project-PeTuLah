class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.time :start_time
      t.integer :party_of
      t.integer :user_id
      t.integer :tour_id

      t.timestamps null: false
    end
  end
end
