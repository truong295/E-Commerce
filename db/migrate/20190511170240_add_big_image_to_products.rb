class AddBigImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :big_image, :string
  end
end
