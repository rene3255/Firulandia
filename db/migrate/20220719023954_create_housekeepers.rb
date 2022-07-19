class CreateHousekeepers < ActiveRecord::Migration[7.0]
  def change
    create_table :housekeepers do |t|
      t.string :full_name, null: false
      t.string :address, null: false
      t.text :description, null: false
      t.text :conditions, null: false
      t.integer :price, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
