class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.float :weight
      t.string :cart_desc
      t.string :short_desc
      t.string :long_desc
      t.string :image
      t.references :category, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
