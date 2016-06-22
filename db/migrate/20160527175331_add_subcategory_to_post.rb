class AddSubcategoryToPost < ActiveRecord::Migration
  def change
    add_column :posts, :subcategory, :reference
  end
end
