class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :client_identifier
      t.string :full_name
      t.string :document_type
      t.string :document_number
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
