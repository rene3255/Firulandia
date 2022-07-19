class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :full_name, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :confirmed, default: false
      t.integer :price, null: false
      t.text :pet_description, null: false
      t.text :review
      t.references :user, null: false, foreign_key: true
      t.references :housekeeper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
