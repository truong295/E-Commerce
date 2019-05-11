class AddOldPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :old_price, :string
  end
end
