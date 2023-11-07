class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :room_identifier
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
