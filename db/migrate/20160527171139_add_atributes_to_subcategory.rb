class AddAtributesToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :category, :reference
  end
  
  def self.up
    change_table :subcategories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subcategories, :image
  end
end
