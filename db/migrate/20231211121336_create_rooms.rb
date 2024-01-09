class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :room_info
      t.integer :price
      t.string :address
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
