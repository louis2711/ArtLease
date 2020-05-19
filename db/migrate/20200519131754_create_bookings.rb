class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :artpiece, foreign_key: true
      t.string :status
      t.date :start_date
      t.date :end_date


      t.timestamps
    end
  end
end
