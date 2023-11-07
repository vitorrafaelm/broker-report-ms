class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :broker_identifier
      t.string :client_identifier
      t.string :propertie_identifier
      t.string :address_line_one
      t.string :address_line_two
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
