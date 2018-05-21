class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.boolean :is_booked
      t.references :user, foreign_key: true
      t.references :hideout, foreign_key: true

      t.timestamps
    end
  end
end
