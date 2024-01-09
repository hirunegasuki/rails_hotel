class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.text :room_info
      t.integer :total_price
      t.integer :number
      t.date :check_in
      t.date :check_out
      t.string :image

      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
