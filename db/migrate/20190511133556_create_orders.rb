class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :amount
      t.string :ship_name
      t.string :ship_address
      t.string :ship_address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :shipper
      t.string :email
      t.datetime :date
      t.boolean :is_shipped?

      t.timestamps
    end
  end
end
