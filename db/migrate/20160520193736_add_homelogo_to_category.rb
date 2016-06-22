class AddHomelogoToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :homelogo, :boolean
  end
end
