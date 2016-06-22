class ChangeTagInCategory < ActiveRecord::Migration
  def change
  	change_column :categories, :tag, :integer
  end
end
