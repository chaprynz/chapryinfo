class AddTagToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :tag, :integer
  end
end
