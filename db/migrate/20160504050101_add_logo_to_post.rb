class AddLogoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :logo, :boolean
  end
end
