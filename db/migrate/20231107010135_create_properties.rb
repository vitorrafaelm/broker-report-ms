class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :broker_identifier
      t.string :client_owner
      t.string :rooms_quantity
      t.string :informations

      t.timestamps
    end
  end
end
