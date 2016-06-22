class AddTagToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :tag, :integer
  end
end
