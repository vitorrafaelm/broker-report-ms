class CreateBrokers < ActiveRecord::Migration[7.0]
  def change
    create_table :brokers do |t|
      t.string :identifier
      t.string :name
      t.string :email
      t.string :password
      t.string :document_type
      t.string :document_number
      t.string :broker_identifier
      t.text :profile_picture
      t.string :account_status

      t.timestamps
    end
  end
end
