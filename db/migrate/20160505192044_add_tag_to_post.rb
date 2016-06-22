class AddTagToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tag, :integer
  end
end
