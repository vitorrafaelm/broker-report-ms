class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :property_identifier
      t.string :room_name
      t.decimal :room_width
      t.decimal :room_length
      t.text :room_description
      t.text :room_observations

      t.timestamps
    end
  end
end
