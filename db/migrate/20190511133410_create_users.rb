class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :country
      t.string :address
      t.string :address2

      t.timestamps
    end
  end
end
