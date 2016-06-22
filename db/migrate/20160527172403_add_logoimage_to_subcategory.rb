class AddLogoimageToSubcategory < ActiveRecord::Migration
  def self.up
    change_table :subcategories do |t|
      t.attachment :logoimage
    end
  end

  def self.down
    remove_attachment :subcategories, :logoimage
  end
end
