class ChangeTagInPost < ActiveRecord::Migration
  def change
  	change_column :posts, :tag, :integer
  end
end
