class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.float :price
      t.datetime :date
      t.string :start_time
      t.string :end_time
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
