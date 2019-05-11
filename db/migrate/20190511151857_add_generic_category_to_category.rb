class AddGenericCategoryToCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :generic_category, foreign_key: true
  end
end
