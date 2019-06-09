class CreateCheckOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :check_outs do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
