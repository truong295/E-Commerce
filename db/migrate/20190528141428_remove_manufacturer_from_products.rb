class RemoveManufacturerFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :manufacturer, foreign_key: true
  end
end
