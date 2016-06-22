class AddAToPost < ActiveRecord::Migration
  def change
    add_column :posts, :a, :boolean
    add_column :posts, :b, :boolean
    add_column :posts, :c, :boolean
    add_column :posts, :d, :boolean
    add_column :posts, :e, :boolean
    add_column :posts, :f, :boolean
    add_column :posts, :g, :boolean
    add_column :posts, :h, :boolean
  end
end
